require "rails_helper"

RSpec.describe TeacherActivitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/teacher_activities").to route_to("teacher_activities#index")
    end

    it "routes to #new" do
      expect(:get => "/teacher_activities/new").to route_to("teacher_activities#new")
    end

    it "routes to #show" do
      expect(:get => "/teacher_activities/1").to route_to("teacher_activities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/teacher_activities/1/edit").to route_to("teacher_activities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/teacher_activities").to route_to("teacher_activities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/teacher_activities/1").to route_to("teacher_activities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/teacher_activities/1").to route_to("teacher_activities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/teacher_activities/1").to route_to("teacher_activities#destroy", :id => "1")
    end

  end
end
