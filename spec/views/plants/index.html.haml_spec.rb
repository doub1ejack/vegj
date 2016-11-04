require 'rails_helper'

RSpec.describe "plants/index", type: :view do
  before(:each) do
    assign(:plants, [
      Plant.create!( FactoryGirl.create(:garden) ),
      Plant.create!( FactoryGirl.create(:garden) )
    ])
  end

  it "renders a list of plants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Scientific Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
