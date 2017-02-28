require 'rails_helper'

RSpec.describe "TeacherGeneratingThemes", type: :request do
  describe "GET /teacher_generating_themes" do
    it "works! (now write some real specs)" do
      get teacher_generating_themes_path
      expect(response).to have_http_status(200)
    end
  end
end
