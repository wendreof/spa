require 'rails_helper'

RSpec.describe "specific_technical_competences/edit", type: :view do
  before(:each) do
    @specific_technical_competence = assign(:specific_technical_competence, SpecificTechnicalCompetence.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit specific_technical_competence form" do
    render

    assert_select "form[action=?][method=?]", specific_technical_competence_path(@specific_technical_competence), "post" do

      assert_select "input#specific_technical_competence_description[name=?]", "specific_technical_competence[description]"
    end
  end
end
