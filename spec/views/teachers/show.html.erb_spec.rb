require 'rails_helper'

RSpec.describe "teachers/show", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :registration => "Registration",
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Registration/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
