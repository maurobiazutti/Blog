require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      title: "MyString",
      description: "MyText"
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input[name=?]", "category[title]"

      assert_select "textarea[name=?]", "category[description]"
    end
  end
end
