require 'rails_helper'

RSpec.describe "methodologies/index", type: :view do
  before(:each) do
    assign(:methodologies, [
      Methodology.create!(
        :description => "Description",
        :long_description => "Long Description"
      ),
      Methodology.create!(
        :description => "Description",
        :long_description => "Long Description"
      )
    ])
  end

  it "renders a list of methodologies" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Long Description".to_s, :count => 2
  end
end
