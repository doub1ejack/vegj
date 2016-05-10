class Garden < ActiveRecord::Base
  belongs_to :user
  
  validates :square_feet, presence: true
  validates :name, presence: true
  validates :zone, presence: true
  # validates :user, presence: true
  
  #TODO: remove user from form and set it to current user in the model
end
