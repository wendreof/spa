require 'rails_helper'

RSpec.describe "generating_theme_sugestions/show", type: :view do
  before(:each) do
    @generating_theme_sugestion = assign(:generating_theme_sugestion, GeneratingThemeSugestion.create!(
      :description => "Description",
      :long_description => "Long Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Long Description/)
  end
end
