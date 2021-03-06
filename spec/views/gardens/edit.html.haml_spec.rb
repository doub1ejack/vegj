require 'rails_helper'


RSpec.describe "gardens/edit", type: :view do
  before(:each) do
    @garden = FactoryGirl.create(:garden)
  end

  it "renders the edit garden form" do
    render

     assert_select "form[action=?][method=?]", garden_path(@garden), "post" do
 
       assert_select "input#garden_name[name=?]", "garden[name]"
 
       assert_select "input#garden_square_feet[name=?]", "garden[square_feet]"
 
       assert_select "input#garden_zone[name=?]", "garden[zone]"
 
       assert_select "input#garden_garden_type[name=?]", "garden[garden_type]"
 
       assert_select "select#garden_user_id[name=?]", "garden[user_id]"
     end
  end
end
