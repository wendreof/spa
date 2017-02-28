require 'rails_helper'

RSpec.describe "teacher_activities/edit", type: :view do
  before(:each) do
    @teacher_activity = assign(:teacher_activity, TeacherActivity.create!())
  end

  it "renders the edit teacher_activity form" do
    render

    assert_select "form[action=?][method=?]", teacher_activity_path(@teacher_activity), "post" do
    end
  end
end
