require 'rails_helper'

RSpec.describe "strategies/index", type: :view do
  before(:each) do
    assign(:strategies, [
      Strategy.create!(
        :description => "Description",
        :category => nil
      ),
      Strategy.create!(
        :description => "Description",
        :category => nil
      )
    ])
  end

  it "renders a list of strategies" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
