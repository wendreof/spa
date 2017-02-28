require 'rails_helper'

RSpec.describe "methodologies/new", type: :view do
  before(:each) do
    assign(:methodology, Methodology.new(
      :description => "MyString",
      :long_description => "MyString"
    ))
  end

  it "renders new methodology form" do
    render

    assert_select "form[action=?][method=?]", methodologies_path, "post" do

      assert_select "input#methodology_description[name=?]", "methodology[description]"

      assert_select "input#methodology_long_description[name=?]", "methodology[long_description]"
    end
  end
end
