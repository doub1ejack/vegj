require 'rails_helper'

# first factorygirl test following http://everydayrails.com/2012/03/19/testing-series-rspec-models-factory-girl.html
RSpec.describe User, type: :model do
  
  context "User Properties" do
  
    it "has a valid factory" do
      user = FactoryGirl.build(:user) 
      expect( user ).to be_valid
    end
    
    it "requires a name" do
      user_without_name = FactoryGirl.build(:user, name: nil) 
      expect( user_without_name ).to_not be_valid
    end
  
    it "requires an email" do 
      user_without_email = FactoryGirl.build(:user, email: nil) 
      expect( user_without_email ).to_not be_valid
    end

    it "can soft-delete a user" do
      user = FactoryGirl.create(:user)
      user.soft_delete
      expect(user.deleted_at).to_not be_nil
    end


  end 
  
end
