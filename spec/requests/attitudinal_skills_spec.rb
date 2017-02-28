require 'rails_helper'

RSpec.describe "AttitudinalSkills", type: :request do
  describe "GET /attitudinal_skills" do
    it "works! (now write some real specs)" do
      get attitudinal_skills_path
      expect(response).to have_http_status(200)
    end
  end
end
