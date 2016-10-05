require 'rails_helper'
require 'factory_girl_rails'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe GardensController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Garden. As you add validations to Garden, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:garden)
    # TODO: use Faker to generate random test data
  }

  let(:invalid_attributes) { {:name => nil, :square_feet => nil, :zone => nil, :user => nil} }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GardensController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all gardens as @gardens" do
      garden = FactoryGirl.create(:garden)
      get :index, {}, valid_session
      expect(assigns(:gardens)).to eq([garden])
    end
  end

  describe "GET #show" do
    it "assigns the requested garden as @garden" do
      garden = FactoryGirl.create(:garden)
      get :show, {:id => garden.to_param}, valid_session
      expect(assigns(:garden)).to eq(garden)
    end
  end

  describe "GET #new" do
    it "assigns a new garden as @garden" do
      get :new, {}, valid_session
      expect(assigns(:garden)).to be_a_new(Garden)
    end
  end

  describe "GET #edit" do
    it "assigns the requested garden as @garden" do
      garden = FactoryGirl.create(:garden)
      get :edit, {:id => garden.to_param}, valid_session
      expect(assigns(:garden)).to eq(garden)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Garden" do
        expect {
          post :create, {:garden => valid_attributes}, valid_session
        }.to change(Garden, :count).by(1)
      end

      it "assigns a newly created garden as @garden" do
        post :create, {:garden => valid_attributes}, valid_session
        expect(assigns(:garden)).to be_a(Garden)
        expect(assigns(:garden)).to be_persisted
      end

      it "redirects to the created garden" do
        post :create, {:garden => valid_attributes}, valid_session
        expect(response).to redirect_to(Garden.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved garden as @garden" do
        post :create, {:garden => invalid_attributes}, valid_session
        expect(assigns(:garden)).to be_a_new(Garden)
      end

      it "re-renders the 'new' template" do
        post :create, {:garden => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end      
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      
      let(:new_attributes) { 
        newAttrs = {
          name: "Newer, Better Garden",
          zone: 98765432,
          square_feet: 23456789
        }
        FactoryGirl.attributes_for(:garden, newAttrs )
      }

      # TODO: make this more durable (if newAttributes changes, this will be incomplete or break)
      it "updates the requested garden to new attributes" do
      garden = FactoryGirl.create(:garden)
        put :update, {:id => garden.to_param, :garden => new_attributes}, valid_session
        garden.reload
        expect(garden).to have_attributes( name: "Newer, Better Garden", zone: 98765432, square_feet: 23456789 )
      end

      it "assigns the requested garden as @garden" do
      garden = FactoryGirl.create(:garden)
        put :update, {:id => garden.to_param, :garden => valid_attributes}, valid_session
        expect(assigns(:garden)).to eq(garden)
      end

      it "redirects to the garden" do
      garden = FactoryGirl.create(:garden)
        put :update, {:id => garden.to_param, :garden => valid_attributes}, valid_session
        expect(response).to redirect_to(garden)
      end
    end

    context "with invalid params" do
      it "assigns the garden as @garden" do
      garden = FactoryGirl.create(:garden)
        put :update, {:id => garden.to_param, :garden => invalid_attributes}, valid_session
        expect(assigns(:garden)).to eq(garden)
      end

      it "re-renders the 'edit' template" do
      garden = FactoryGirl.create(:garden)
        put :update, {:id => garden.to_param, :garden => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested garden" do
      garden = FactoryGirl.create(:garden)
      expect {
        delete :destroy, {:id => garden.to_param}, valid_session
      }.to change(Garden, :count).by(-1)
    end

    it "redirects to the gardens list" do
      garden = FactoryGirl.create(:garden)
      delete :destroy, {:id => garden.to_param}, valid_session
      expect(response).to redirect_to(gardens_url)
    end
  end

end
