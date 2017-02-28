require 'rails_helper'

RSpec.describe "teacher_activities/new", type: :view do
  before(:each) do
    assign(:teacher_activity, TeacherActivity.new())
  end

  it "renders new teacher_activity form" do
    render

    assert_select "form[action=?][method=?]", teacher_activities_path, "post" do
    end
  end
end
