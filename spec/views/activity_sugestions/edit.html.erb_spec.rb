require 'rails_helper'

RSpec.describe "activity_sugestions/edit", type: :view do
  before(:each) do
    @activity_sugestion = assign(:activity_sugestion, ActivitySugestion.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit activity_sugestion form" do
    render

    assert_select "form[action=?][method=?]", activity_sugestion_path(@activity_sugestion), "post" do

      assert_select "input#activity_sugestion_description[name=?]", "activity_sugestion[description]"
    end
  end
end
