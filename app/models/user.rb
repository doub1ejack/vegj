require "factory_girl_rails"

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :confirmable, :lockable
  has_many :gardens
  
  validates :name, presence: true
  
  # Define invalid properties here instead of in the model test
  # @return [User Model] an invalid user model
  def User.get_invalid_user
    invalid_properties = {
      name: nil,
      email: nil,
      password: nil
    }
    FactoryGirl.build(:user, invalid_properties)
  end

  # instead of deleting, indicate the user requested a delete & timestamp it
  def soft_delete
    update_attribute(:deleted_at, Time.current)
  end

  # ensure user account is active
  def active_for_authentication?
    super && !deleted_at
  end

  # provide a custom message for a soft-deleted account
  def inactive_message
    !deleted_at ? super : :deleted_account
  end
end
