require 'rails_helper'

RSpec.describe "meetings/index", type: :view do
  before(:each) do
    assign(:meetings, [
      Meeting.create!(
        :name => "Name",
        :generating_theme => nil,
        :workload => 1,
        :specific_skill => nil,
        :category => nil,
        :know_more => "MyText"
      ),
      Meeting.create!(
        :name => "Name",
        :generating_theme => nil,
        :workload => 1,
        :specific_skill => nil,
        :category => nil,
        :know_more => "MyText"
      )
    ])
  end

  it "renders a list of meetings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
