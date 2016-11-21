require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe "devise/registrations/edit", type: :view do
  before(:each) do
    assign(:user, FactoryGirl::build(:user))
  end

  it "renders new registration form" do
    # render
    # puts @rendered

    assert_select "form[action=?][method=?]", user_registration_path, "post" do

      # assert_select "input#user_email[email=?]", "user[email]"
    end
  end
end