require 'ffaker'

FactoryGirl.define do
  factory :user do |u|
    u.name FFaker::Name.name
    u.email { |me| "#{name.to_s.gsub(/\s/,'.')}_#{rand(1000).to_s}@testing.com" }
    u.password "password"
    
    factory :confirmed_user do |u|
      u.password_confirmation "password"
    end
  end
end
