require "rails_helper"

RSpec.describe StudyUnitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/study_units").to route_to("study_units#index")
    end

    it "routes to #new" do
      expect(:get => "/study_units/new").to route_to("study_units#new")
    end

    it "routes to #show" do
      expect(:get => "/study_units/1").to route_to("study_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/study_units/1/edit").to route_to("study_units#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/study_units").to route_to("study_units#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/study_units/1").to route_to("study_units#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/study_units/1").to route_to("study_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/study_units/1").to route_to("study_units#destroy", :id => "1")
    end

  end
end
