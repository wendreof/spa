require 'rails_helper'

RSpec.describe "specific_technical_competences/new", type: :view do
  before(:each) do
    assign(:specific_technical_competence, SpecificTechnicalCompetence.new(
      :description => "MyString"
    ))
  end

  it "renders new specific_technical_competence form" do
    render

    assert_select "form[action=?][method=?]", specific_technical_competences_path, "post" do

      assert_select "input#specific_technical_competence_description[name=?]", "specific_technical_competence[description]"
    end
  end
end
