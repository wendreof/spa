require "rails_helper"

RSpec.describe TeacherGeneratingThemesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/teacher_generating_themes").to route_to("teacher_generating_themes#index")
    end

    it "routes to #new" do
      expect(:get => "/teacher_generating_themes/new").to route_to("teacher_generating_themes#new")
    end

    it "routes to #show" do
      expect(:get => "/teacher_generating_themes/1").to route_to("teacher_generating_themes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/teacher_generating_themes/1/edit").to route_to("teacher_generating_themes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/teacher_generating_themes").to route_to("teacher_generating_themes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/teacher_generating_themes/1").to route_to("teacher_generating_themes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/teacher_generating_themes/1").to route_to("teacher_generating_themes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/teacher_generating_themes/1").to route_to("teacher_generating_themes#destroy", :id => "1")
    end

  end
end
