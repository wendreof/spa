require 'rails_helper'

RSpec.describe "teacher_generating_themes/edit", type: :view do
  before(:each) do
    @teacher_generating_theme = assign(:teacher_generating_theme, TeacherGeneratingTheme.create!())
  end

  it "renders the edit teacher_generating_theme form" do
    render

    assert_select "form[action=?][method=?]", teacher_generating_theme_path(@teacher_generating_theme), "post" do
    end
  end
end
