require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe Users::RegistrationsController, type: :controller do    
  include Devise::Test::ControllerHelpers

    
  describe "GET #new" do
    it "assigns a new user as @user" do
      request.env["devise.mapping"] = Devise.mappings[:user]
      get :new, {}
      expect(assigns(:user)).to be_a_new(User)
    end
  end
  
  describe "GET #edit" do
    it "assigns the requested user as @user" do
      request.env["devise.mapping"] = Devise.mappings[:user]

      # sign-in user
      user = FactoryGirl.create(:user_for_account_update)
      sign_in(user, scope: :user) # note: does not verify correct password

      # request edit form
      get :edit, {:id => user.id}
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "GET #destroy" do

    it "sets 'deleted_at' date for user" do
      request.env["devise.mapping"] = Devise.mappings[:user]

      # sign-in user
      user = FactoryGirl.create(:user_for_account_update)
      sign_in(user, scope: :user) # note: does not verify correct password

      # soft-delete user
      delete :destroy, {:id => user.id}
      expect(user.reload.deleted_at).to_not be_nil
    end

    it "logs out the user" do
      request.env["devise.mapping"] = Devise.mappings[:user]

      # sign-in user
      user = FactoryGirl.create(:user_for_account_update)
      sign_in(user, scope: :user) # note: does not verify correct password

      # refer to https://github.com/plataformatec/devise/wiki/How-To:-Test-controllers-with-Rails-3-and-4-%28and-RSpec%29
      delete :destroy, {:id => user.id}
      expect(subject.current_user).to eq(nil)
    end
  end
  
  describe "POST #create" do
    let(:valid_attributes) { FactoryGirl.attributes_for(:user) }
    let(:invalid_attributes) { User.get_invalid_user.attributes }
    
    # Help Devise map routes from the test back to the original controller.
    # See http://stackoverflow.com/questions/6659555/how-to-write-controller-tests-when-you-override-devise-registration-controller
    before :each do
      request.env['devise.mapping'] = Devise.mappings[:user]
    end
    
    context "with valid params" do
      it "creates a new User" do
        expect {
          post :create, {:user => valid_attributes}
        }.to change(User, :count).by(1)
      end      
    end
    
  end

end
