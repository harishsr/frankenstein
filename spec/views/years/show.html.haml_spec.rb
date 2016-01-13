require 'rails_helper'

RSpec.describe "years/show", type: :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :user => nil,
      :when => "When"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/When/)
  end
end
