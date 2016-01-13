require 'rails_helper'

RSpec.describe "years/edit", type: :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :user => nil,
      :when => "MyString"
    ))
  end

  it "renders the edit year form" do
    render

    assert_select "form[action=?][method=?]", year_path(@year), "post" do

      assert_select "input#year_user_id[name=?]", "year[user_id]"

      assert_select "input#year_when[name=?]", "year[when]"
    end
  end
end
