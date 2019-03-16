require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "sports")
    @user = User.create(username: "testuser", email: "testuser@example.com", password: "password", admin: true)
  end

  test "Should get categories index" do
    get categories_path
    assert_response :success
  end

  test "Should get new" do
    sign_in_as(@user, "password")
    get new_category_path
    assert_response :success
  end

  test "Should get show" do
    # Pass the Category Id in @category
    get category_path(@category)
    assert_response :success
  end

  test "Should redirect create when admin not logged in" do
    assert_no_difference 'Category.count' do
      post categories_path, params: {category: {name: "sports"}}
    end
    assert_redirected_to categories_path
  end
end