require 'rails_helper'

RSpec.describe "course_module_study_units/new", type: :view do
  before(:each) do
    assign(:course_module_study_unit, CourseModuleStudyUnit.new())
  end

  it "renders new course_module_study_unit form" do
    render

    assert_select "form[action=?][method=?]", course_module_study_units_path, "post" do
    end
  end
end
