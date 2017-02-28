require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :desctipion => "Desctipion"
      ),
      Category.create!(
        :desctipion => "Desctipion"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Desctipion".to_s, :count => 2
  end
end
