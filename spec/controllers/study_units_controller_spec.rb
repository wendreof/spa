require 'rails_helper'

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

RSpec.describe StudyUnitsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # StudyUnit. As you add validations to StudyUnit, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StudyUnitsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all study_units as @study_units" do
      study_unit = StudyUnit.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:study_units)).to eq([study_unit])
    end
  end

  describe "GET #show" do
    it "assigns the requested study_unit as @study_unit" do
      study_unit = StudyUnit.create! valid_attributes
      get :show, {:id => study_unit.to_param}, valid_session
      expect(assigns(:study_unit)).to eq(study_unit)
    end
  end

  describe "GET #new" do
    it "assigns a new study_unit as @study_unit" do
      get :new, {}, valid_session
      expect(assigns(:study_unit)).to be_a_new(StudyUnit)
    end
  end

  describe "GET #edit" do
    it "assigns the requested study_unit as @study_unit" do
      study_unit = StudyUnit.create! valid_attributes
      get :edit, {:id => study_unit.to_param}, valid_session
      expect(assigns(:study_unit)).to eq(study_unit)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new StudyUnit" do
        expect {
          post :create, {:study_unit => valid_attributes}, valid_session
        }.to change(StudyUnit, :count).by(1)
      end

      it "assigns a newly created study_unit as @study_unit" do
        post :create, {:study_unit => valid_attributes}, valid_session
        expect(assigns(:study_unit)).to be_a(StudyUnit)
        expect(assigns(:study_unit)).to be_persisted
      end

      it "redirects to the created study_unit" do
        post :create, {:study_unit => valid_attributes}, valid_session
        expect(response).to redirect_to(StudyUnit.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved study_unit as @study_unit" do
        post :create, {:study_unit => invalid_attributes}, valid_session
        expect(assigns(:study_unit)).to be_a_new(StudyUnit)
      end

      it "re-renders the 'new' template" do
        post :create, {:study_unit => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested study_unit" do
        study_unit = StudyUnit.create! valid_attributes
        put :update, {:id => study_unit.to_param, :study_unit => new_attributes}, valid_session
        study_unit.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested study_unit as @study_unit" do
        study_unit = StudyUnit.create! valid_attributes
        put :update, {:id => study_unit.to_param, :study_unit => valid_attributes}, valid_session
        expect(assigns(:study_unit)).to eq(study_unit)
      end

      it "redirects to the study_unit" do
        study_unit = StudyUnit.create! valid_attributes
        put :update, {:id => study_unit.to_param, :study_unit => valid_attributes}, valid_session
        expect(response).to redirect_to(study_unit)
      end
    end

    context "with invalid params" do
      it "assigns the study_unit as @study_unit" do
        study_unit = StudyUnit.create! valid_attributes
        put :update, {:id => study_unit.to_param, :study_unit => invalid_attributes}, valid_session
        expect(assigns(:study_unit)).to eq(study_unit)
      end

      it "re-renders the 'edit' template" do
        study_unit = StudyUnit.create! valid_attributes
        put :update, {:id => study_unit.to_param, :study_unit => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested study_unit" do
      study_unit = StudyUnit.create! valid_attributes
      expect {
        delete :destroy, {:id => study_unit.to_param}, valid_session
      }.to change(StudyUnit, :count).by(-1)
    end

    it "redirects to the study_units list" do
      study_unit = StudyUnit.create! valid_attributes
      delete :destroy, {:id => study_unit.to_param}, valid_session
      expect(response).to redirect_to(study_units_url)
    end
  end

end