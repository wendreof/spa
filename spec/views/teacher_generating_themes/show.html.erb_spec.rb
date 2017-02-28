require 'rails_helper'

RSpec.describe "teacher_generating_themes/show", type: :view do
  before(:each) do
    @teacher_generating_theme = assign(:teacher_generating_theme, TeacherGeneratingTheme.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
