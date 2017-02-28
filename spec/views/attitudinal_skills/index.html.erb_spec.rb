require 'rails_helper'

RSpec.describe "attitudinal_skills/index", type: :view do
  before(:each) do
    assign(:attitudinal_skills, [
      AttitudinalSkill.create!(
        :tipo => "Tipo",
        :Description => "Description"
      ),
      AttitudinalSkill.create!(
        :tipo => "Tipo",
        :Description => "Description"
      )
    ])
  end

  it "renders a list of attitudinal_skills" do
    render
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
