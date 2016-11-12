require "factory_girl_rails"

class Plant < ActiveRecord::Base
    
  belongs_to :garden
  
  enum life_cycle: [ :annual, :perennial, :biennial ]
  enum sun: [ :full_sun, :part_shade, :full_shade ]
  enum sow_method: [ :direct, :indoor, :direct_indoor ]
  
  validates :garden, presence: true
  
  # Define invalid properties here instead of in the model test
  # @return [Plant Model] an invalid plant model
  def Plant.get_invalid_plant
    invalid_properties = {
      name: nil,
      garden: nil
    }
    FactoryGirl.build(:plant, invalid_properties)
  end
end
