require 'rails_helper'

RSpec.describe "StudyUnits", type: :request do
  describe "GET /study_units" do
    it "works! (now write some real specs)" do
      get study_units_path
      expect(response).to have_http_status(200)
    end
  end
end
