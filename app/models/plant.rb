class Plant < ActiveRecord::Base  
  belongs_to :garden
  
  enum life_cycle: [ :annual, :perennial, :biennial ]
  enum sun: [ :full_sun, :part_shade, :full_shade ]
  enum sow_method: [ :direct, :indoor, :direct_indoor ]
end
