require "spec_helper"

describe BatteriesController do
  describe "routing" do

    it "routes to #index" do
      get("/batteries").should route_to("batteries#index")
    end

    it "routes to #new" do
      get("/batteries/new").should route_to("batteries#new")
    end

    it "routes to #show" do
      get("/batteries/1").should route_to("batteries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/batteries/1/edit").should route_to("batteries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/batteries").should route_to("batteries#create")
    end

    it "routes to #update" do
      put("/batteries/1").should route_to("batteries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/batteries/1").should route_to("batteries#destroy", :id => "1")
    end

  end
end
