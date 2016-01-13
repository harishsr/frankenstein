require 'rails_helper'

RSpec.describe "years/index", type: :view do
  before(:each) do
    assign(:years, [
      Year.create!(
        :user => nil,
        :when => "When"
      ),
      Year.create!(
        :user => nil,
        :when => "When"
      )
    ])
  end

  it "renders a list of years" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "When".to_s, :count => 2
  end
end
