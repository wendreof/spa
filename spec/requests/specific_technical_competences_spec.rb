require 'rails_helper'

RSpec.describe "SpecificTechnicalCompetences", type: :request do
  describe "GET /specific_technical_competences" do
    it "works! (now write some real specs)" do
      get specific_technical_competences_path
      expect(response).to have_http_status(200)
    end
  end
end
