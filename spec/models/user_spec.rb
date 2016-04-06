require 'rails_helper'

# first factorygirl test following http://everydayrails.com/2012/03/19/testing-series-rspec-models-factory-girl.html
RSpec.describe User, type: :model do
  
  before(:each) do
    @fg = FactoryGirl
  end
  
  context "User Properties" do
  
    it "has a valid factory" do
      user = @fg.build(:user) 
      expect( user ).to be_valid
    end
    
    it "does not require a name" do
      user_without_name = @fg.build(:user, name: nil) 
      expect( user_without_name ).to be_valid
    end
  
    it "requires an email" do 
      user_without_email = @fg.build(:user, email: nil) 
      expect( user_without_email ).to_not be_valid
    end

  end 
  
end
