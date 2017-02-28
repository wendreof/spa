require 'rails_helper'

RSpec.describe "specific_skills/new", type: :view do
  before(:each) do
    assign(:specific_skill, SpecificSkill.new(
      :description => "MyString"
    ))
  end

  it "renders new specific_skill form" do
    render

    assert_select "form[action=?][method=?]", specific_skills_path, "post" do

      assert_select "input#specific_skill_description[name=?]", "specific_skill[description]"
    end
  end
end
