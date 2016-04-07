require 'rails_helper'

RSpec.describe "gardens/new", type: :view do
  before(:each) do
    assign(:garden, Garden.new(
      :name => "MyString",
      :square_feet => 1,
      :zone => 1,
      :garden_type => "MyString",
      :user => nil
    ))
  end

  it "renders new garden form" do
    render

     assert_select "form[action=?][method=?]", gardens_path, "post" do
 
       assert_select "input#garden_name[name=?]", "garden[name]"
 
       assert_select "input#garden_square_feet[name=?]", "garden[square_feet]"
 
       assert_select "input#garden_zone[name=?]", "garden[zone]"
 
       assert_select "input#garden_garden_type[name=?]", "garden[garden_type]"
 
       assert_select "select#garden_user_id[name=?]", "garden[user_id]"
     end
  end
end
