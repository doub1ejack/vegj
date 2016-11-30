require 'ffaker'

FactoryGirl.define do
  factory :user do |u|
    @pass = "password"
    
    name FFaker::Name.name
    email { |me| "#{name.to_s.gsub(/\s/,'.')}_#{rand(1000).to_s}@testing.com" }
    password @pass
    
    factory :user_for_account_update do
      password_confirmation @pass
      confirmed_at Date.today
    end
  end
end
