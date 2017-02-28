require 'rails_helper'

RSpec.describe "study_units/index", type: :view do
  before(:each) do
    assign(:study_units, [
      StudyUnit.create!(
        :description => "Description"
      ),
      StudyUnit.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of study_units" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
