require 'rails_helper'

RSpec.describe "attitudinal_skills/show", type: :view do
  before(:each) do
    @attitudinal_skill = assign(:attitudinal_skill, AttitudinalSkill.create!(
      :tipo => "Tipo",
      :Description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Description/)
  end
end
