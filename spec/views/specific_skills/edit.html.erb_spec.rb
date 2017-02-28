require 'rails_helper'

RSpec.describe "specific_skills/edit", type: :view do
  before(:each) do
    @specific_skill = assign(:specific_skill, SpecificSkill.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit specific_skill form" do
    render

    assert_select "form[action=?][method=?]", specific_skill_path(@specific_skill), "post" do

      assert_select "input#specific_skill_description[name=?]", "specific_skill[description]"
    end
  end
end
