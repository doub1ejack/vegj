FactoryGirl.define do
  factory :plant do
    
    factory :plant_rose_mallow do
      name "Rose Mallow" 
      scientific_name "Lavatera trimestris"
      height 48
      width 18
      spacing 0
      life_cycle :annual
      sun :full_sun
      sow_method :direct
    end
  end
end
