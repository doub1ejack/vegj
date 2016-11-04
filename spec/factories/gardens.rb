FactoryGirl.define do
  factory :garden do
    name "Default Test Garden"
    square_feet 10
    zone 3
    association :user, :factory => :user
  end
end
