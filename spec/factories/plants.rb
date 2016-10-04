FactoryGirl.define do
  factory :plant do
    association :garden, :factory => :garden
    
    factory :plant_rose_mallow do
      name "Rose Mallow" 
      scientific_name "Lavatera trimestris"
      height 48
      life_cycle :annual
      sun :full_sun
      sow_method :direct
    end
  end
end
