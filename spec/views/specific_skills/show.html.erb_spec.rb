require 'rails_helper'

RSpec.describe "specific_skills/show", type: :view do
  before(:each) do
    @specific_skill = assign(:specific_skill, SpecificSkill.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
