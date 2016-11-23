require 'rails_helper'
require 'factory_girl_rails'


describe 'devise/registrations/edit' do 

  before do
    view.stub(:resource).and_return(User.new)
    view.stub(:resource_name).and_return(:user)
    view.stub(:devise_mapping).and_return(Devise.mappings[:user])
  end

  it 'has a login link for existing users' do
    render     
    
    assert_select "form[action=?][method=?]", user_registration_path(@resource), "post" do
 
       assert_select "input#user_name[name=?]", "user[name]"
 
       assert_select "input#user_email[name=?]", "user[email]"
 
       assert_select "input#user_password[name=?]", "user[password]"
 
       assert_select "input#user_password_confirmation[name=?]", "user[password_confirmation]"
 
       assert_select "input#user_current_password[name=?]", "user[current_password]"
     end
  end
end