require 'rails_helper'

RSpec.describe "generating_theme_sugestions/new", type: :view do
  before(:each) do
    assign(:generating_theme_sugestion, GeneratingThemeSugestion.new(
      :description => "MyString",
      :long_description => "MyString"
    ))
  end

  it "renders new generating_theme_sugestion form" do
    render

    assert_select "form[action=?][method=?]", generating_theme_sugestions_path, "post" do

      assert_select "input#generating_theme_sugestion_description[name=?]", "generating_theme_sugestion[description]"

      assert_select "input#generating_theme_sugestion_long_description[name=?]", "generating_theme_sugestion[long_description]"
    end
  end
end
