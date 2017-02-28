require 'rails_helper'

RSpec.describe "verbs/edit", type: :view do
  before(:each) do
    @verb = assign(:verb, Verb.create!(
      :description => "MyString",
      :category => nil
    ))
  end

  it "renders the edit verb form" do
    render

    assert_select "form[action=?][method=?]", verb_path(@verb), "post" do

      assert_select "input#verb_description[name=?]", "verb[description]"

      assert_select "input#verb_category_id[name=?]", "verb[category_id]"
    end
  end
end
