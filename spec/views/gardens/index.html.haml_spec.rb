require 'rails_helper'

RSpec.describe "gardens/index", type: :view do
  before(:each) do
    assign(:gardens, [
      Garden.create!(
        :name => "Name",
        :square_feet => 1,
        :zone => 2,
        :garden_type => "Garden Type",
        :user => nil
      ),
      Garden.create!(
        :name => "Name",
        :square_feet => 1,
        :zone => 2,
        :garden_type => "Garden Type",
        :user => nil
      )
    ])
  end

  it "renders a list of gardens" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Garden Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
