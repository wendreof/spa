require "rails_helper"

RSpec.describe AttitudinalSkillsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/attitudinal_skills").to route_to("attitudinal_skills#index")
    end

    it "routes to #new" do
      expect(:get => "/attitudinal_skills/new").to route_to("attitudinal_skills#new")
    end

    it "routes to #show" do
      expect(:get => "/attitudinal_skills/1").to route_to("attitudinal_skills#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/attitudinal_skills/1/edit").to route_to("attitudinal_skills#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/attitudinal_skills").to route_to("attitudinal_skills#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/attitudinal_skills/1").to route_to("attitudinal_skills#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/attitudinal_skills/1").to route_to("attitudinal_skills#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/attitudinal_skills/1").to route_to("attitudinal_skills#destroy", :id => "1")
    end

  end
end
