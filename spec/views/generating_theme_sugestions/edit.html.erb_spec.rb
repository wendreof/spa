require 'rails_helper'

RSpec.describe "generating_theme_sugestions/edit", type: :view do
  before(:each) do
    @generating_theme_sugestion = assign(:generating_theme_sugestion, GeneratingThemeSugestion.create!(
      :description => "MyString",
      :long_description => "MyString"
    ))
  end

  it "renders the edit generating_theme_sugestion form" do
    render

    assert_select "form[action=?][method=?]", generating_theme_sugestion_path(@generating_theme_sugestion), "post" do

      assert_select "input#generating_theme_sugestion_description[name=?]", "generating_theme_sugestion[description]"

      assert_select "input#generating_theme_sugestion_long_description[name=?]", "generating_theme_sugestion[long_description]"
    end
  end
end
