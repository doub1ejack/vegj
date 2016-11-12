require 'rails_helper'

RSpec.describe "plants/index", type: :view do
  before(:each) do
    plant = FactoryGirl.create(:plant_rose_mallow)
    assign(:plants, [ plant, plant ])
  end

  it "renders a list of plants" do
    render
    plant = FactoryGirl.create(:plant_rose_mallow)
    # puts plant.inspect
    assert_select "tr>td", :text => plant.name, :count => 2
    assert_select "tr>td", :text => plant.scientific_name, :count => 2
    assert_select "tr>td", :text => plant.height.to_s, :count => 2
    assert_select "tr>td", :text => plant.width.to_s, :count => 2
    assert_select "tr>td", :text => plant.spacing.to_s, :count => 2
    assert_select "tr>td", :text => plant.life_cycle, :count => 2
    assert_select "tr>td", :text => plant.sun, :count => 2
    assert_select "tr>td", :text => plant.sow_method, :count => 2
  end
end
