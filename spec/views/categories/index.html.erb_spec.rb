require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        title: "Title",
        description: "MyText"
      ),
      Category.create!(
        title: "Title",
        description: "MyText"
      )
    ])
  end

  it "renders a list of categories" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
