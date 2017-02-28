require "rails_helper"

RSpec.describe ActivitySugestionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/activity_sugestions").to route_to("activity_sugestions#index")
    end

    it "routes to #new" do
      expect(:get => "/activity_sugestions/new").to route_to("activity_sugestions#new")
    end

    it "routes to #show" do
      expect(:get => "/activity_sugestions/1").to route_to("activity_sugestions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/activity_sugestions/1/edit").to route_to("activity_sugestions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/activity_sugestions").to route_to("activity_sugestions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/activity_sugestions/1").to route_to("activity_sugestions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/activity_sugestions/1").to route_to("activity_sugestions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/activity_sugestions/1").to route_to("activity_sugestions#destroy", :id => "1")
    end

  end
end
