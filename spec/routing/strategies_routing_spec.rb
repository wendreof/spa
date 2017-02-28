require "rails_helper"

RSpec.describe StrategiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/strategies").to route_to("strategies#index")
    end

    it "routes to #new" do
      expect(:get => "/strategies/new").to route_to("strategies#new")
    end

    it "routes to #show" do
      expect(:get => "/strategies/1").to route_to("strategies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/strategies/1/edit").to route_to("strategies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/strategies").to route_to("strategies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/strategies/1").to route_to("strategies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/strategies/1").to route_to("strategies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/strategies/1").to route_to("strategies#destroy", :id => "1")
    end

  end
end
