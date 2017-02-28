require 'rails_helper'

RSpec.describe "activity_sugestions/new", type: :view do
  before(:each) do
    assign(:activity_sugestion, ActivitySugestion.new(
      :description => "MyString"
    ))
  end

  it "renders new activity_sugestion form" do
    render

    assert_select "form[action=?][method=?]", activity_sugestions_path, "post" do

      assert_select "input#activity_sugestion_description[name=?]", "activity_sugestion[description]"
    end
  end
end
