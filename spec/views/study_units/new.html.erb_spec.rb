require 'rails_helper'

RSpec.describe "study_units/new", type: :view do
  before(:each) do
    assign(:study_unit, StudyUnit.new(
      :description => "MyString"
    ))
  end

  it "renders new study_unit form" do
    render

    assert_select "form[action=?][method=?]", study_units_path, "post" do

      assert_select "input#study_unit_description[name=?]", "study_unit[description]"
    end
  end
end
