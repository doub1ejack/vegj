class Garden < ActiveRecord::Base
  belongs_to :user
  
  validates :square_feet, presence: true
  validates :name, presence: true
  validates :zone, presence: true
  validates :user, presence: true

  attr_writer :thumb
  def thumb
    if(garden_type == "vegetable")
      @thumb = '/assets/veggie-garden_16x9.jpg'
    else
      @thumb = '/assets/flower-garden_16x9.jpg'
    end
  end
  
end
