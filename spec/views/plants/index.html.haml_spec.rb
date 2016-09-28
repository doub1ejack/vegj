require 'rails_helper'

RSpec.describe "plants/index", type: :view do
  before(:each) do
    assign(:plants, [
      Plant.create!(
        :name => "Name",
        :scientific_name => "Scientific Name",
        :height => 1,
        :width => 2,
        :spacing => 3,
        :life_cycle => 4,
        :sun => 5,
        :sow_method => 6,
        :garden => nil
      ),
      Plant.create!(
        :name => "Name",
        :scientific_name => "Scientific Name",
        :height => 1,
        :width => 2,
        :spacing => 3,
        :life_cycle => 4,
        :sun => 5,
        :sow_method => 6,
        :garden => nil
      )
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
