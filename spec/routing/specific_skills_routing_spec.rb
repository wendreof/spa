require "rails_helper"

RSpec.describe SpecificSkillsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/specific_skills").to route_to("specific_skills#index")
    end

    it "routes to #new" do
      expect(:get => "/specific_skills/new").to route_to("specific_skills#new")
    end

    it "routes to #show" do
      expect(:get => "/specific_skills/1").to route_to("specific_skills#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/specific_skills/1/edit").to route_to("specific_skills#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/specific_skills").to route_to("specific_skills#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/specific_skills/1").to route_to("specific_skills#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/specific_skills/1").to route_to("specific_skills#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/specific_skills/1").to route_to("specific_skills#destroy", :id => "1")
    end

  end
end
