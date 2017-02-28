require 'rails_helper'

RSpec.describe "verbs/show", type: :view do
  before(:each) do
    @verb = assign(:verb, Verb.create!(
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
