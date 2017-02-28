require 'rails_helper'

RSpec.describe "course_modules/show", type: :view do
  before(:each) do
    @course_module = assign(:course_module, CourseModule.create!(
      :description => "Description",
      :course => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
