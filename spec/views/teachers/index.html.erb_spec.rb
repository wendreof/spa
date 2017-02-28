require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :registration => "Registration",
        :name => "Name",
        :email => "Email"
      ),
      Teacher.create!(
        :registration => "Registration",
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "Registration".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
