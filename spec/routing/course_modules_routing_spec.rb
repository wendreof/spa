require "rails_helper"

RSpec.describe CourseModulesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/course_modules").to route_to("course_modules#index")
    end

    it "routes to #new" do
      expect(:get => "/course_modules/new").to route_to("course_modules#new")
    end

    it "routes to #show" do
      expect(:get => "/course_modules/1").to route_to("course_modules#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/course_modules/1/edit").to route_to("course_modules#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/course_modules").to route_to("course_modules#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/course_modules/1").to route_to("course_modules#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/course_modules/1").to route_to("course_modules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/course_modules/1").to route_to("course_modules#destroy", :id => "1")
    end

  end
end
