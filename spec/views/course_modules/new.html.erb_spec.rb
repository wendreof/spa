require 'rails_helper'

RSpec.describe "course_modules/new", type: :view do
  before(:each) do
    assign(:course_module, CourseModule.new(
      :description => "MyString",
      :course => nil
    ))
  end

  it "renders new course_module form" do
    render

    assert_select "form[action=?][method=?]", course_modules_path, "post" do

      assert_select "input#course_module_description[name=?]", "course_module[description]"

      assert_select "input#course_module_course_id[name=?]", "course_module[course_id]"
    end
  end
end
