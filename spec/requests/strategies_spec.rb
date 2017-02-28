require 'rails_helper'

RSpec.describe "Strategies", type: :request do
  describe "GET /strategies" do
    it "works! (now write some real specs)" do
      get strategies_path
      expect(response).to have_http_status(200)
    end
  end
end
