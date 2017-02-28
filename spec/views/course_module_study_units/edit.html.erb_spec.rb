require 'rails_helper'

RSpec.describe "course_module_study_units/edit", type: :view do
  before(:each) do
    @course_module_study_unit = assign(:course_module_study_unit, CourseModuleStudyUnit.create!())
  end

  it "renders the edit course_module_study_unit form" do
    render

    assert_select "form[action=?][method=?]", course_module_study_unit_path(@course_module_study_unit), "post" do
    end
  end
end
