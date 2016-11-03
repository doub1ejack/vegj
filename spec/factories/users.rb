require 'ffaker'

FactoryGirl.define do
  factory :user do |u|
    u.email { |me| "#{FFaker::Name.name.gsub(/\s/,'.')}_#{rand(1000).to_s}@testing.com" }
    u.password "password"
  end
end
