require 'rails_helper'

RSpec.describe "plane_classrooms/show", type: :view do
  before(:each) do
    @plane_classroom = assign(:plane_classroom, PlaneClassroom.create!(
      :teacher => nil,
      :generating_theme => nil,
      :year => "",
      :semester => "Semester",
      :course => nil,
      :course_module => nil,
      :study_unit => nil,
      :workload => "",
      :menu => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Semester/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
