require 'rails_helper'

RSpec.describe "teacher_activities/index", type: :view do
  before(:each) do
    assign(:teacher_activities, [
      TeacherActivity.create!(),
      TeacherActivity.create!()
    ])
  end

  it "renders a list of teacher_activities" do
    render
  end
end
