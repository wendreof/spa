require 'rails_helper'

RSpec.describe "specific_skills/index", type: :view do
  before(:each) do
    assign(:specific_skills, [
      SpecificSkill.create!(
        :description => "Description"
      ),
      SpecificSkill.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of specific_skills" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
