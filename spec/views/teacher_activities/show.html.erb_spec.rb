require 'rails_helper'

RSpec.describe "teacher_activities/show", type: :view do
  before(:each) do
    @teacher_activity = assign(:teacher_activity, TeacherActivity.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
