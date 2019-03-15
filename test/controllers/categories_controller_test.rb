require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @category = Category.create(name: "sports")
  end

  test "Should get categories index" do
    get categories_path
    assert_response :success
  end

  test "Should get new" do
    get new_category_path
    assert_response :success
  end

  test "Should get show" do
    # Pass the Category Id in @category
    get category_path(@category)
    assert_response :success
  end
end