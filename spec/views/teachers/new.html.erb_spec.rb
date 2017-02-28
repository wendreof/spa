require 'rails_helper'

RSpec.describe "teachers/new", type: :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :registration => "MyString",
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input#teacher_registration[name=?]", "teacher[registration]"

      assert_select "input#teacher_name[name=?]", "teacher[name]"

      assert_select "input#teacher_email[name=?]", "teacher[email]"
    end
  end
end
