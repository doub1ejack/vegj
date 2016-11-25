require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe Users::RegistrationsController, type: :controller do    
    
  describe "GET #new" do
    let(:valid_session) { {} }
    it "assigns a new user as @user"  # do
      # get :new, {}, valid_session
      # expect(assigns(:user)).to be_a_new(User)
    # end
  end
  
  describe "GET #edit" do
    it "assigns the requested user as @user" #do
      # use = FactoryGirl.create(:user)
      # get :edit, {:id => user.to_param}, valid_session
      # expect(assigns(:user)).to eq(user)
    # end
  end
  
  describe "GET #cancel" do
    it "assigns user as @user (?)" #do
      # garden = FactoryGirl.create(:garden)
      # get :index, {}, valid_session
      # expect(assigns(:gardens)).to eq([garden])
    # end
  end
  
  describe "POST #create" do
    let(:valid_attributes) { FactoryGirl.attributes_for(:user) }
    let(:invalid_attributes) { User.get_invalid_user.attributes }
    let(:valid_session) { {} }
    
    # Help Devise map routes from the test back to the original controller.
    # See http://stackoverflow.com/questions/6659555/how-to-write-controller-tests-when-you-override-devise-registration-controller
    before :each do
      request.env['devise.mapping'] = Devise.mappings[:user]
    end
    
    context "with valid params" do
      it "creates a new User" do
        expect {
          post :create, {:user => valid_attributes}, valid_session
        }.to change(User, :count).by(1)
      end      
    end
    
  end

end
