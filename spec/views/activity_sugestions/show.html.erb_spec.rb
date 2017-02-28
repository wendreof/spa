require 'rails_helper'

RSpec.describe "activity_sugestions/show", type: :view do
  before(:each) do
    @activity_sugestion = assign(:activity_sugestion, ActivitySugestion.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
