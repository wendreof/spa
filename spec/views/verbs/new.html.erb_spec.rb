require 'rails_helper'

RSpec.describe "verbs/new", type: :view do
  before(:each) do
    assign(:verb, Verb.new(
      :description => "MyString",
      :category => nil
    ))
  end

  it "renders new verb form" do
    render

    assert_select "form[action=?][method=?]", verbs_path, "post" do

      assert_select "input#verb_description[name=?]", "verb[description]"

      assert_select "input#verb_category_id[name=?]", "verb[category_id]"
    end
  end
end
