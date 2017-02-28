require 'rails_helper'

RSpec.describe "generating_themes/edit", type: :view do
  before(:each) do
    @generating_theme = assign(:generating_theme, GeneratingTheme.create!(
      :description => "MyString",
      :long_description => "MyString"
    ))
  end

  it "renders the edit generating_theme form" do
    render

    assert_select "form[action=?][method=?]", generating_theme_path(@generating_theme), "post" do

      assert_select "input#generating_theme_description[name=?]", "generating_theme[description]"

      assert_select "input#generating_theme_long_description[name=?]", "generating_theme[long_description]"
    end
  end
end
