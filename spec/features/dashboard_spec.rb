require 'rails_helper'
require 'factory_girl_rails'

describe 'authenticated user' do
  it "accesses the dashboard" do
    
    # create user
    user = FactoryGirl.build(:user)
    user.skip_confirmation!
    user.save!
  
    # login to app
    visit root_path
    first(:link,'Login').click
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    
    # expect redirection to site root
    expect(current_path).to eq(root_path)

    # expect logged in user's site root to have these dashboard elements
    expect(page).to have_content 'Your Plants'
    expect(page).to have_selector(:css, "a[href=\"#{new_plant_path}\"]")

    expect(page).to have_content 'Your Journal'

    expect(page).to have_content 'Your Gardens'
    # expect(page).to have_link
  end
end

describe 'unauthenticated user' do
  it "sees welcome page at site root" do
    visit root_path
    expect(page).to have_content 'Register to get started'   
  end
end
