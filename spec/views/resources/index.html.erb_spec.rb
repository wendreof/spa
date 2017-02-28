require 'rails_helper'

RSpec.describe "resources/index", type: :view do
  before(:each) do
    assign(:resources, [
      Resource.create!(
        :description => "Description"
      ),
      Resource.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of resources" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
