require 'rails_helper'

RSpec.describe "resources/edit", type: :view do
  before(:each) do
    @resource = assign(:resource, Resource.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit resource form" do
    render

    assert_select "form[action=?][method=?]", resource_path(@resource), "post" do

      assert_select "input#resource_description[name=?]", "resource[description]"
    end
  end
end
