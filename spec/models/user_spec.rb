require 'rails_helper'

# first factorygirl test following http://everydayrails.com/2012/03/19/testing-series-rspec-models-factory-girl.html
RSpec.describe User, type: :model do

  it "has a valid factory" do
    expect( FactoryGirl.create(:user, name: "micah") ).to be_valid
  end
  
  it "is invalid without a name" do
    pending "learning stuff" 
    expect( FactoryGirl.build(:user, name: nil) ).to_not be_valid
  end

  it "is invalid without an email"
end
