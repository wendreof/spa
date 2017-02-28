require 'rails_helper'

RSpec.describe "GeneratingThemes", type: :request do
  describe "GET /generating_themes" do
    it "works! (now write some real specs)" do
      get generating_themes_path
      expect(response).to have_http_status(200)
    end
  end
end
