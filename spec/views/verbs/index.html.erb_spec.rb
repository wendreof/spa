require 'rails_helper'

RSpec.describe "verbs/index", type: :view do
  before(:each) do
    assign(:verbs, [
      Verb.create!(
        :description => "Description",
        :category => nil
      ),
      Verb.create!(
        :description => "Description",
        :category => nil
      )
    ])
  end

  it "renders a list of verbs" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
