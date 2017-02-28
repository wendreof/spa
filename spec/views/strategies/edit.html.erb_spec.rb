require 'rails_helper'

RSpec.describe "strategies/edit", type: :view do
  before(:each) do
    @strategy = assign(:strategy, Strategy.create!(
      :description => "MyString",
      :category => nil
    ))
  end

  it "renders the edit strategy form" do
    render

    assert_select "form[action=?][method=?]", strategy_path(@strategy), "post" do

      assert_select "input#strategy_description[name=?]", "strategy[description]"

      assert_select "input#strategy_category_id[name=?]", "strategy[category_id]"
    end
  end
end
