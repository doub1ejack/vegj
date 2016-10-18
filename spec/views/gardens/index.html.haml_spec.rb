require 'rails_helper'

RSpec.describe "gardens/index", type: :view do
  before(:each) do
    assign(:gardens, [
      Garden.create!(
        :name => "Test Name",
        :square_feet => 1,
        :zone => 2,
        :garden_type => "Garden Type",
        :user => FactoryGirl.create(:user, email: "test1@example.com")
      ),
      Garden.create!(
        :name => "Test Name",
        :square_feet => 1,
        :zone => 2,
        :garden_type => "Garden Type",
        :user => FactoryGirl.create(:user, email: "test2@example.com")
      )
    ])
    
    # assign(:gardens, 
      # [ 
        # FactoryGirl.create(:garden, user_args: {email: "test1@test.com"}), 
        # FactoryGirl.create(:garden, user_args: {email: "test2@test.com"}) 
      # ]
    # )
  end

  it "renders a list of gardens" do
    render
    assert_select "tr>td", :text => "Test Name", :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Garden Type", :count => 2
    assert_select "tr>td", :text => /@example\.com/, :count => 2
  end
end
