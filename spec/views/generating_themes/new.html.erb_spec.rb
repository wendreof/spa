require 'rails_helper'

RSpec.describe "generating_themes/new", type: :view do
  before(:each) do
    assign(:generating_theme, GeneratingTheme.new(
      :description => "MyString",
      :long_description => "MyString"
    ))
  end

  it "renders new generating_theme form" do
    render

    assert_select "form[action=?][method=?]", generating_themes_path, "post" do

      assert_select "input#generating_theme_description[name=?]", "generating_theme[description]"

      assert_select "input#generating_theme_long_description[name=?]", "generating_theme[long_description]"
    end
  end
end
