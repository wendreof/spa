require 'rails_helper'

RSpec.describe "course_modules/edit", type: :view do
  before(:each) do
    @course_module = assign(:course_module, CourseModule.create!(
      :description => "MyString",
      :course => nil
    ))
  end

  it "renders the edit course_module form" do
    render

    assert_select "form[action=?][method=?]", course_module_path(@course_module), "post" do

      assert_select "input#course_module_description[name=?]", "course_module[description]"

      assert_select "input#course_module_course_id[name=?]", "course_module[course_id]"
    end
  end
end
