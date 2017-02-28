require 'rails_helper'

RSpec.describe "activity_sugestions/index", type: :view do
  before(:each) do
    assign(:activity_sugestions, [
      ActivitySugestion.create!(
        :description => "Description"
      ),
      ActivitySugestion.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of activity_sugestions" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
