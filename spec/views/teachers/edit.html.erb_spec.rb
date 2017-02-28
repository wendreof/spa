require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :registration => "MyString",
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do

      assert_select "input#teacher_registration[name=?]", "teacher[registration]"

      assert_select "input#teacher_name[name=?]", "teacher[name]"

      assert_select "input#teacher_email[name=?]", "teacher[email]"
    end
  end
end
