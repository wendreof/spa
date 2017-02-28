require 'rails_helper'

RSpec.describe "GeneratingThemeSugestions", type: :request do
  describe "GET /generating_theme_sugestions" do
    it "works! (now write some real specs)" do
      get generating_theme_sugestions_path
      expect(response).to have_http_status(200)
    end
  end
end
