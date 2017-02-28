require 'rails_helper'

RSpec.describe "course_module_study_units/index", type: :view do
  before(:each) do
    assign(:course_module_study_units, [
      CourseModuleStudyUnit.create!(),
      CourseModuleStudyUnit.create!()
    ])
  end

  it "renders a list of course_module_study_units" do
    render
  end
end
