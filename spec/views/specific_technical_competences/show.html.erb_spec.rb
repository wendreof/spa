require 'rails_helper'

RSpec.describe "specific_technical_competences/show", type: :view do
  before(:each) do
    @specific_technical_competence = assign(:specific_technical_competence, SpecificTechnicalCompetence.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
