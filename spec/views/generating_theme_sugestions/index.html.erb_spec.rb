require 'rails_helper'

RSpec.describe "generating_theme_sugestions/index", type: :view do
  before(:each) do
    assign(:generating_theme_sugestions, [
      GeneratingThemeSugestion.create!(
        :description => "Description",
        :long_description => "Long Description"
      ),
      GeneratingThemeSugestion.create!(
        :description => "Description",
        :long_description => "Long Description"
      )
    ])
  end

  it "renders a list of generating_theme_sugestions" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Long Description".to_s, :count => 2
  end
end
