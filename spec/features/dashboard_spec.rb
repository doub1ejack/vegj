require 'rails_helper'

describe 'site administrator' do
  it "accesses the dashboard" do
    User.create(
      email: 'user@example.com',
      password: 'secret',
      password_confirmation: 'secret'
    )
  
    visit root_path
    click_link 'Login'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'secret'
    click_button 'Log in'
    
    current_path.should eq dashboard_path
    within 'h1' do
      page.should have_content 'Dashboard'
    end
    page.should have_content 'New Journal Entry'
    page.should have_content 'Manage Plants'
    page.should have_content 'Manage Gardens'
  end
  
  it "is denied access when not logged in" do
    visit dashboard_path

    current_path.should eq login_path
    within 'h1' do
      page.should have_content 'Log in'
    end
  end
end