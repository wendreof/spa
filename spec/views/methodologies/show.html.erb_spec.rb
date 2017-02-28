require 'rails_helper'

RSpec.describe "methodologies/show", type: :view do
  before(:each) do
    @methodology = assign(:methodology, Methodology.create!(
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
