require 'rails_helper'

RSpec.describe "gardens/show", type: :view do
  before(:each) do
    @garden = assign(:garden, Garden.create!(
      :name => "Name",
      :square_feet => 1,
      :zone => 2,
      :garden_type => "Garden Type",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Garden Type/)
    expect(rendered).to match(//)
  end
end
