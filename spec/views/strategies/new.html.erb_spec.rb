require 'rails_helper'

RSpec.describe "strategies/new", type: :view do
  before(:each) do
    assign(:strategy, Strategy.new(
      :description => "MyString",
      :category => nil
    ))
  end

  it "renders new strategy form" do
    render

    assert_select "form[action=?][method=?]", strategies_path, "post" do

      assert_select "input#strategy_description[name=?]", "strategy[description]"

      assert_select "input#strategy_category_id[name=?]", "strategy[category_id]"
    end
  end
end
