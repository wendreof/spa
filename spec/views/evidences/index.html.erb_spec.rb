require 'rails_helper'

RSpec.describe "evidences/index", type: :view do
  before(:each) do
    assign(:evidences, [
      Evidence.create!(
        :description => "Description",
        :long_description => "Long Description"
      ),
      Evidence.create!(
        :description => "Description",
        :long_description => "Long Description"
      )
    ])
  end

  it "renders a list of evidences" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Long Description".to_s, :count => 2
  end
end
