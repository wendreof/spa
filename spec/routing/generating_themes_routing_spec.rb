require "rails_helper"

RSpec.describe GeneratingThemesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/generating_themes").to route_to("generating_themes#index")
    end

    it "routes to #new" do
      expect(:get => "/generating_themes/new").to route_to("generating_themes#new")
    end

    it "routes to #show" do
      expect(:get => "/generating_themes/1").to route_to("generating_themes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/generating_themes/1/edit").to route_to("generating_themes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/generating_themes").to route_to("generating_themes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/generating_themes/1").to route_to("generating_themes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/generating_themes/1").to route_to("generating_themes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/generating_themes/1").to route_to("generating_themes#destroy", :id => "1")
    end

  end
end
