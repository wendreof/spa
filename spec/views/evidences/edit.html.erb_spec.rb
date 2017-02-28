require 'rails_helper'

RSpec.describe "evidences/edit", type: :view do
  before(:each) do
    @evidence = assign(:evidence, Evidence.create!(
      :description => "MyString",
      :long_description => "MyString"
    ))
  end

  it "renders the edit evidence form" do
    render

    assert_select "form[action=?][method=?]", evidence_path(@evidence), "post" do

      assert_select "input#evidence_description[name=?]", "evidence[description]"

      assert_select "input#evidence_long_description[name=?]", "evidence[long_description]"
    end
  end
end
