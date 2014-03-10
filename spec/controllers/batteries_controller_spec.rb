require 'spec_helper'

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

describe BatteriesController do

  # This should return the minimal set of attributes required to create a valid
  # Battery. As you add validations to Battery, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "code" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BatteriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all batteries as @batteries" do
      battery = Battery.create! valid_attributes
      get :index, {}, valid_session
      assigns(:batteries).should eq([battery])
    end
  end

  describe "GET show" do
    it "assigns the requested battery as @battery" do
      battery = Battery.create! valid_attributes
      get :show, {:id => battery.to_param}, valid_session
      assigns(:battery).should eq(battery)
    end
  end

  describe "GET new" do
    it "assigns a new battery as @battery" do
      get :new, {}, valid_session
      assigns(:battery).should be_a_new(Battery)
    end
  end

  describe "GET edit" do
    it "assigns the requested battery as @battery" do
      battery = Battery.create! valid_attributes
      get :edit, {:id => battery.to_param}, valid_session
      assigns(:battery).should eq(battery)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Battery" do
        expect {
          post :create, {:battery => valid_attributes}, valid_session
        }.to change(Battery, :count).by(1)
      end

      it "assigns a newly created battery as @battery" do
        post :create, {:battery => valid_attributes}, valid_session
        assigns(:battery).should be_a(Battery)
        assigns(:battery).should be_persisted
      end

      it "redirects to the created battery" do
        post :create, {:battery => valid_attributes}, valid_session
        response.should redirect_to(Battery.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved battery as @battery" do
        # Trigger the behavior that occurs when invalid params are submitted
        Battery.any_instance.stub(:save).and_return(false)
        post :create, {:battery => { "code" => "invalid value" }}, valid_session
        assigns(:battery).should be_a_new(Battery)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Battery.any_instance.stub(:save).and_return(false)
        post :create, {:battery => { "code" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested battery" do
        battery = Battery.create! valid_attributes
        # Assuming there are no other batteries in the database, this
        # specifies that the Battery created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Battery.any_instance.should_receive(:update).with({ "code" => "MyString" })
        put :update, {:id => battery.to_param, :battery => { "code" => "MyString" }}, valid_session
      end

      it "assigns the requested battery as @battery" do
        battery = Battery.create! valid_attributes
        put :update, {:id => battery.to_param, :battery => valid_attributes}, valid_session
        assigns(:battery).should eq(battery)
      end

      it "redirects to the battery" do
        battery = Battery.create! valid_attributes
        put :update, {:id => battery.to_param, :battery => valid_attributes}, valid_session
        response.should redirect_to(battery)
      end
    end

    describe "with invalid params" do
      it "assigns the battery as @battery" do
        battery = Battery.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Battery.any_instance.stub(:save).and_return(false)
        put :update, {:id => battery.to_param, :battery => { "code" => "invalid value" }}, valid_session
        assigns(:battery).should eq(battery)
      end

      it "re-renders the 'edit' template" do
        battery = Battery.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Battery.any_instance.stub(:save).and_return(false)
        put :update, {:id => battery.to_param, :battery => { "code" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested battery" do
      battery = Battery.create! valid_attributes
      expect {
        delete :destroy, {:id => battery.to_param}, valid_session
      }.to change(Battery, :count).by(-1)
    end

    it "redirects to the batteries list" do
      battery = Battery.create! valid_attributes
      delete :destroy, {:id => battery.to_param}, valid_session
      response.should redirect_to(batteries_url)
    end
  end

end
