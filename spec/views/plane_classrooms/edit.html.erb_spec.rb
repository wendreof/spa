require 'rails_helper'

RSpec.describe "plane_classrooms/edit", type: :view do
  before(:each) do
    @plane_classroom = assign(:plane_classroom, PlaneClassroom.create!(
      :teacher => nil,
      :generating_theme => nil,
      :year => "",
      :semester => "MyString",
      :course => nil,
      :course_module => nil,
      :study_unit => nil,
      :workload => "",
      :menu => "MyText"
    ))
  end

  it "renders the edit plane_classroom form" do
    render

    assert_select "form[action=?][method=?]", plane_classroom_path(@plane_classroom), "post" do

      assert_select "input#plane_classroom_teacher_id[name=?]", "plane_classroom[teacher_id]"

      assert_select "input#plane_classroom_generating_theme_id[name=?]", "plane_classroom[generating_theme_id]"

      assert_select "input#plane_classroom_year[name=?]", "plane_classroom[year]"

      assert_select "input#plane_classroom_semester[name=?]", "plane_classroom[semester]"

      assert_select "input#plane_classroom_course_id[name=?]", "plane_classroom[course_id]"

      assert_select "input#plane_classroom_course_module_id[name=?]", "plane_classroom[course_module_id]"

      assert_select "input#plane_classroom_study_unit_id[name=?]", "plane_classroom[study_unit_id]"

      assert_select "input#plane_classroom_workload[name=?]", "plane_classroom[workload]"

      assert_select "textarea#plane_classroom_menu[name=?]", "plane_classroom[menu]"
    end
  end
end
