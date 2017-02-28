require 'rails_helper'

RSpec.describe "relationships/index", type: :view do
  before(:each) do
    assign(:relationships, [
      Relationship.create!(
        :attitudinal_skills => nil,
        :specific_skills => nil,
        :verbs => nil,
        :activities => nil
      ),
      Relationship.create!(
        :attitudinal_skills => nil,
        :specific_skills => nil,
        :verbs => nil,
        :activities => nil
      )
    ])
  end

  it "renders a list of relationships" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
