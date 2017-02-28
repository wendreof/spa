require 'rails_helper'

RSpec.describe "methodologies/edit", type: :view do
  before(:each) do
    @methodology = assign(:methodology, Methodology.create!(
      :description => "MyString",
      :long_description => "MyString"
    ))
  end

  it "renders the edit methodology form" do
    render

    assert_select "form[action=?][method=?]", methodology_path(@methodology), "post" do

      assert_select "input#methodology_description[name=?]", "methodology[description]"

      assert_select "input#methodology_long_description[name=?]", "methodology[long_description]"
    end
  end
end
