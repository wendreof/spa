require 'rails_helper'

RSpec.describe "CourseModules", type: :request do
  describe "GET /course_modules" do
    it "works! (now write some real specs)" do
      get course_modules_path
      expect(response).to have_http_status(200)
    end
  end
end
