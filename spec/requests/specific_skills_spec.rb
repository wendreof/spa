require 'rails_helper'

RSpec.describe "SpecificSkills", type: :request do
  describe "GET /specific_skills" do
    it "works! (now write some real specs)" do
      get specific_skills_path
      expect(response).to have_http_status(200)
    end
  end
end
