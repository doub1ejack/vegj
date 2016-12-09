require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe "plants/new", type: :view do
  before(:each) do
    assign(:plant, FactoryGirl::build(:plant))
  end

  it "renders new plant form" do
    render
    # puts @rendered

    assert_select "form[action=?][method=?]", plants_path, "post" do

      assert_select "input#plant_name[name=?]", "plant[name]"

      assert_select "input#plant_scientific_name[name=?]", "plant[scientific_name]"

      assert_select "input#plant_height[name=?]", "plant[height]"

      assert_select "input#plant_width[name=?]", "plant[width]"

      assert_select "input#plant_spacing[name=?]", "plant[spacing]"

      assert_select "select#plant_life_cycle[name=?]", "plant[life_cycle]"

      assert_select "select#plant_sun[name=?]", "plant[sun]"

      assert_select "select#plant_sow_method[name=?]", "plant[sow_method]"

      # assert_select "select#plant_garden[name=?]", "plant[garden]"
    end
  end
end
