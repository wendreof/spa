require 'rails_helper'

RSpec.describe "course_modules/index", type: :view do
  before(:each) do
    assign(:course_modules, [
      CourseModule.create!(
        :description => "Description",
        :course => nil
      ),
      CourseModule.create!(
        :description => "Description",
        :course => nil
      )
    ])
  end

  it "renders a list of course_modules" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
