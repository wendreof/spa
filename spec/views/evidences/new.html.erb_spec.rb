require 'rails_helper'

RSpec.describe "evidences/new", type: :view do
  before(:each) do
    assign(:evidence, Evidence.new(
      :description => "MyString",
      :long_description => "MyString"
    ))
  end

  it "renders new evidence form" do
    render

    assert_select "form[action=?][method=?]", evidences_path, "post" do

      assert_select "input#evidence_description[name=?]", "evidence[description]"

      assert_select "input#evidence_long_description[name=?]", "evidence[long_description]"
    end
  end
end
