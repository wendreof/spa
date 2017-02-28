require 'rails_helper'

RSpec.describe "generating_themes/show", type: :view do
  before(:each) do
    @generating_theme = assign(:generating_theme, GeneratingTheme.create!(
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
