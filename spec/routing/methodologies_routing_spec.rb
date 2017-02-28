require "rails_helper"

RSpec.describe MethodologiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/methodologies").to route_to("methodologies#index")
    end

    it "routes to #new" do
      expect(:get => "/methodologies/new").to route_to("methodologies#new")
    end

    it "routes to #show" do
      expect(:get => "/methodologies/1").to route_to("methodologies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/methodologies/1/edit").to route_to("methodologies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/methodologies").to route_to("methodologies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/methodologies/1").to route_to("methodologies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/methodologies/1").to route_to("methodologies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/methodologies/1").to route_to("methodologies#destroy", :id => "1")
    end

  end
end
