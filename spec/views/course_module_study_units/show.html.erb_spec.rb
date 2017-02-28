require 'rails_helper'

RSpec.describe "course_module_study_units/show", type: :view do
  before(:each) do
    @course_module_study_unit = assign(:course_module_study_unit, CourseModuleStudyUnit.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
