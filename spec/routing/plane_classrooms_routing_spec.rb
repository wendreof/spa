require "rails_helper"

RSpec.describe PlaneClassroomsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/plane_classrooms").to route_to("plane_classrooms#index")
    end

    it "routes to #new" do
      expect(:get => "/plane_classrooms/new").to route_to("plane_classrooms#new")
    end

    it "routes to #show" do
      expect(:get => "/plane_classrooms/1").to route_to("plane_classrooms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/plane_classrooms/1/edit").to route_to("plane_classrooms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/plane_classrooms").to route_to("plane_classrooms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/plane_classrooms/1").to route_to("plane_classrooms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/plane_classrooms/1").to route_to("plane_classrooms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/plane_classrooms/1").to route_to("plane_classrooms#destroy", :id => "1")
    end

  end
end
