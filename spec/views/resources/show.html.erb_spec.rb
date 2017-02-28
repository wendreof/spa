require 'rails_helper'

RSpec.describe "resources/show", type: :view do
  before(:each) do
    @resource = assign(:resource, Resource.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
