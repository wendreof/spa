require 'rails_helper'

RSpec.describe "study_units/show", type: :view do
  before(:each) do
    @study_unit = assign(:study_unit, StudyUnit.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
