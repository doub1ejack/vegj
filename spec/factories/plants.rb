FactoryGirl.define do
  factory :plant do
    name "MyString"
    scientific_name "MyString"
    height 1
    width 1
    spacing 1
    life_cycle 1
    sun 1
    sow_method 1
    direct_seed_start "2016-09-28"
    direct_seed_stop "2016-09-28"
    indoor_seed_start "2016-09-28"
    indoor_seed_stop "2016-09-28"
    transplant_start "2016-09-28"
    transplant_stop "2016-09-28"
    garden nil
  end
end
