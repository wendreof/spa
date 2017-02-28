require 'rails_helper'

RSpec.describe "meetings/new", type: :view do
  before(:each) do
    assign(:meeting, Meeting.new(
      :name => "MyString",
      :generating_theme => nil,
      :workload => 1,
      :specific_skill => nil,
      :category => nil,
      :know_more => "MyText"
    ))
  end

  it "renders new meeting form" do
    render

    assert_select "form[action=?][method=?]", meetings_path, "post" do

      assert_select "input#meeting_name[name=?]", "meeting[name]"

      assert_select "input#meeting_generating_theme_id[name=?]", "meeting[generating_theme_id]"

      assert_select "input#meeting_workload[name=?]", "meeting[workload]"

      assert_select "input#meeting_specific_skill_id[name=?]", "meeting[specific_skill_id]"

      assert_select "input#meeting_category_id[name=?]", "meeting[category_id]"

      assert_select "textarea#meeting_know_more[name=?]", "meeting[know_more]"
    end
  end
end
