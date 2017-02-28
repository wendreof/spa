require 'rails_helper'

RSpec.describe "study_units/edit", type: :view do
  before(:each) do
    @study_unit = assign(:study_unit, StudyUnit.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit study_unit form" do
    render

    assert_select "form[action=?][method=?]", study_unit_path(@study_unit), "post" do

      assert_select "input#study_unit_description[name=?]", "study_unit[description]"
    end
  end
end
