require 'rails_helper'

RSpec.describe "years/new", type: :view do
  before(:each) do
    assign(:year, Year.new(
      :user => nil,
      :when => "MyString"
    ))
  end

  it "renders new year form" do
    render

    assert_select "form[action=?][method=?]", years_path, "post" do

      assert_select "input#year_user_id[name=?]", "year[user_id]"

      assert_select "input#year_when[name=?]", "year[when]"
    end
  end
end
