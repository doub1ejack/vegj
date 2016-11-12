require 'rails_helper'

RSpec.describe Plant, type: :model do
  
  context "Plant Properties" do
  
    it "has a valid factory" do 
      expect( FactoryGirl.build(:plant) ).to be_valid
    end
    
    it "requires a common name" do
      plant_without_name = FactoryGirl.build(:user, name: nil) 
      expect( plant_without_name ).to_not be_valid
    end
  end 
  
  pending "should not belong to gardens (remove garden_id and create a mapping between plants and user gardens)"
end
