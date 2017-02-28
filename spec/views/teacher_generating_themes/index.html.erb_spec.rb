require 'rails_helper'

RSpec.describe "teacher_generating_themes/index", type: :view do
  before(:each) do
    assign(:teacher_generating_themes, [
      TeacherGeneratingTheme.create!(),
      TeacherGeneratingTheme.create!()
    ])
  end

  it "renders a list of teacher_generating_themes" do
    render
  end
end
