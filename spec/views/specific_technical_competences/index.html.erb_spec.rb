require 'rails_helper'

RSpec.describe "specific_technical_competences/index", type: :view do
  before(:each) do
    assign(:specific_technical_competences, [
      SpecificTechnicalCompetence.create!(
        :description => "Description"
      ),
      SpecificTechnicalCompetence.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of specific_technical_competences" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
