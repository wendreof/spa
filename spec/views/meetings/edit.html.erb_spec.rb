require 'rails_helper'

RSpec.describe "meetings/edit", type: :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      :name => "MyString",
      :generating_theme => nil,
      :workload => 1,
      :specific_skill => nil,
      :category => nil,
      :know_more => "MyText"
    ))
  end

  it "renders the edit meeting form" do
    render

    assert_select "form[action=?][method=?]", meeting_path(@meeting), "post" do

      assert_select "input#meeting_name[name=?]", "meeting[name]"

      assert_select "input#meeting_generating_theme_id[name=?]", "meeting[generating_theme_id]"

      assert_select "input#meeting_workload[name=?]", "meeting[workload]"

      assert_select "input#meeting_specific_skill_id[name=?]", "meeting[specific_skill_id]"

      assert_select "input#meeting_category_id[name=?]", "meeting[category_id]"

      assert_select "textarea#meeting_know_more[name=?]", "meeting[know_more]"
    end
  end
end
