require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe "plants/show", type: :view do
  before(:each) do
    
    @plant = assign(:plant, FactoryGirl.create(:plant_rose_mallow))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rose Mallow/)
    expect(rendered).to match(/Lavatera trimestris/)
    expect(rendered).to match(/48 inches/)
    expect(rendered).to match(/annual/)
    expect(rendered).to match(/full_sun/)
    expect(rendered).to match(/direct/)
    expect(rendered).to match(//)
  end
end
