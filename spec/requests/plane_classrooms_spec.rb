require 'rails_helper'

RSpec.describe "PlaneClassrooms", type: :request do
  describe "GET /plane_classrooms" do
    it "works! (now write some real specs)" do
      get plane_classrooms_path
      expect(response).to have_http_status(200)
    end
  end
end
