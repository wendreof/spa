require 'rails_helper'

RSpec.describe "plane_classrooms/index", type: :view do
  before(:each) do
    assign(:plane_classrooms, [
      PlaneClassroom.create!(
        :teacher => nil,
        :generating_theme => nil,
        :year => "",
        :semester => "Semester",
        :course => nil,
        :course_module => nil,
        :study_unit => nil,
        :workload => "",
        :menu => "MyText"
      ),
      PlaneClassroom.create!(
        :teacher => nil,
        :generating_theme => nil,
        :year => "",
        :semester => "Semester",
        :course => nil,
        :course_module => nil,
        :study_unit => nil,
        :workload => "",
        :menu => "MyText"
      )
    ])
  end

  it "renders a list of plane_classrooms" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Semester".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
