require 'rails_helper'

RSpec.describe "teacher_generating_themes/new", type: :view do
  before(:each) do
    assign(:teacher_generating_theme, TeacherGeneratingTheme.new())
  end

  it "renders new teacher_generating_theme form" do
    render

    assert_select "form[action=?][method=?]", teacher_generating_themes_path, "post" do
    end
  end
end
