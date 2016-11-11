require 'rails_helper'
require 'factory_girl_rails'

describe 'authenticated user' do
  it "accesses the dashboard" do
    user = FactoryGirl.build(:confirmed_user)
    user.skip_confirmation!
    user.save!
  
    visit root_path
    click_link 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    
    puts User.all.inspect
    
    expect(current_path).to eq(root_path)

    expect(page).to have_content "Welcome #{user.name}" 
    expect(page).to have_content 'Your Journal'
    expect(page).to have_content 'New Journal Entry'
    expect(page).to have_content 'Your Plants'
    expect(page).to have_content 'Your Gardens'
  end
end

describe 'unauthenticated user' do
  it "sees welcome page at site root" do
    visit root_path
    expect(page).to have_content 'Register to get started'   
  end
end
