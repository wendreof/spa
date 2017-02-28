require "rails_helper"

RSpec.describe EvidencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/evidences").to route_to("evidences#index")
    end

    it "routes to #new" do
      expect(:get => "/evidences/new").to route_to("evidences#new")
    end

    it "routes to #show" do
      expect(:get => "/evidences/1").to route_to("evidences#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/evidences/1/edit").to route_to("evidences#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/evidences").to route_to("evidences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/evidences/1").to route_to("evidences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/evidences/1").to route_to("evidences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/evidences/1").to route_to("evidences#destroy", :id => "1")
    end

  end
end
