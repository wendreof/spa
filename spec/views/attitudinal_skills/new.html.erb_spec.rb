require 'rails_helper'

RSpec.describe "attitudinal_skills/new", type: :view do
  before(:each) do
    assign(:attitudinal_skill, AttitudinalSkill.new(
      :tipo => "MyString",
      :Description => "MyString"
    ))
  end

  it "renders new attitudinal_skill form" do
    render

    assert_select "form[action=?][method=?]", attitudinal_skills_path, "post" do

      assert_select "input#attitudinal_skill_tipo[name=?]", "attitudinal_skill[tipo]"

      assert_select "input#attitudinal_skill_Description[name=?]", "attitudinal_skill[Description]"
    end
  end
end
