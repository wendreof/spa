require 'rails_helper'

RSpec.describe "attitudinal_skills/edit", type: :view do
  before(:each) do
    @attitudinal_skill = assign(:attitudinal_skill, AttitudinalSkill.create!(
      :tipo => "MyString",
      :Description => "MyString"
    ))
  end

  it "renders the edit attitudinal_skill form" do
    render

    assert_select "form[action=?][method=?]", attitudinal_skill_path(@attitudinal_skill), "post" do

      assert_select "input#attitudinal_skill_tipo[name=?]", "attitudinal_skill[tipo]"

      assert_select "input#attitudinal_skill_Description[name=?]", "attitudinal_skill[Description]"
    end
  end
end
