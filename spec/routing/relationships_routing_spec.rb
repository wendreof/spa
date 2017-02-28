require "rails_helper"

RSpec.describe RelationshipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/relationships").to route_to("relationships#index")
    end

    it "routes to #new" do
      expect(:get => "/relationships/new").to route_to("relationships#new")
    end

    it "routes to #show" do
      expect(:get => "/relationships/1").to route_to("relationships#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/relationships/1/edit").to route_to("relationships#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/relationships").to route_to("relationships#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/relationships/1").to route_to("relationships#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/relationships/1").to route_to("relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/relationships/1").to route_to("relationships#destroy", :id => "1")
    end

  end
end
