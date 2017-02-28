require "rails_helper"

RSpec.describe GeneratingThemeSugestionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/generating_theme_sugestions").to route_to("generating_theme_sugestions#index")
    end

    it "routes to #new" do
      expect(:get => "/generating_theme_sugestions/new").to route_to("generating_theme_sugestions#new")
    end

    it "routes to #show" do
      expect(:get => "/generating_theme_sugestions/1").to route_to("generating_theme_sugestions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/generating_theme_sugestions/1/edit").to route_to("generating_theme_sugestions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/generating_theme_sugestions").to route_to("generating_theme_sugestions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/generating_theme_sugestions/1").to route_to("generating_theme_sugestions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/generating_theme_sugestions/1").to route_to("generating_theme_sugestions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/generating_theme_sugestions/1").to route_to("generating_theme_sugestions#destroy", :id => "1")
    end

  end
end
