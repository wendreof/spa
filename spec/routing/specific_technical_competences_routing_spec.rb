require "rails_helper"

RSpec.describe SpecificTechnicalCompetencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/specific_technical_competences").to route_to("specific_technical_competences#index")
    end

    it "routes to #new" do
      expect(:get => "/specific_technical_competences/new").to route_to("specific_technical_competences#new")
    end

    it "routes to #show" do
      expect(:get => "/specific_technical_competences/1").to route_to("specific_technical_competences#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/specific_technical_competences/1/edit").to route_to("specific_technical_competences#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/specific_technical_competences").to route_to("specific_technical_competences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/specific_technical_competences/1").to route_to("specific_technical_competences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/specific_technical_competences/1").to route_to("specific_technical_competences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/specific_technical_competences/1").to route_to("specific_technical_competences#destroy", :id => "1")
    end

  end
end
