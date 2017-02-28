require 'rails_helper'

RSpec.describe "activities/index", type: :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :description => "Description"
      ),
      Activity.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
