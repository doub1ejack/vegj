require 'rails_helper'

RSpec.describe "gardens/show", type: :view do
  before(:each) do
    @garden = assign(:garden, FactoryGirl.create(:garden))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/#{@garden.name}/)
    expect(rendered).to match(/#{@garden.square_feet}/)
    expect(rendered).to match(/#{@garden.zone}/)
    expect(rendered).to match(/#{@garden.garden_type}/)
    expect(rendered).to match(/[#{@garden.user.email}]/)
  end
end
