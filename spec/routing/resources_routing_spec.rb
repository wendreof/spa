require "rails_helper"

RSpec.describe ResourcesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resources").to route_to("resources#index")
    end

    it "routes to #new" do
      expect(:get => "/resources/new").to route_to("resources#new")
    end

    it "routes to #show" do
      expect(:get => "/resources/1").to route_to("resources#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resources/1/edit").to route_to("resources#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resources").to route_to("resources#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/resources/1").to route_to("resources#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/resources/1").to route_to("resources#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resources/1").to route_to("resources#destroy", :id => "1")
    end

  end
end
