require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe Users::RegistrationsController, type: :controller do
  
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
