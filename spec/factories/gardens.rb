FactoryGirl.define do
  factory :garden do
    name "MyString"
    square_feet 1
    zone 1
    association :user, :factory => :user
  end
end
