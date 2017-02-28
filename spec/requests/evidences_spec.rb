require 'rails_helper'

RSpec.describe "Evidences", type: :request do
  describe "GET /evidences" do
    it "works! (now write some real specs)" do
      get evidences_path
      expect(response).to have_http_status(200)
    end
  end
end
