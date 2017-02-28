require 'rails_helper'

RSpec.describe "strategies/show", type: :view do
  before(:each) do
    @strategy = assign(:strategy, Strategy.create!(
      :description => "Description",
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
