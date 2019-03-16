require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.create(username: "testuser", email: "testuser@example.com", password: "password", admin: true)
  end
  
  # Integration End-to-End Test for Positive Scheme
  test "Get new category form and create category" do
    # Admin login
    sign_in_as(@user, "password")
    # Access New Category Page
    get new_category_path
    # New category page rendered
    assert_template 'categories/new'
    # Check whether the submitted category added
    assert_difference 'Category.count', 1 do
      post categories_path, params:{category:{name: "sports"}}
      follow_redirect!
    end
    # Check redirection page
    assert_template 'categories/index'
    # Check the page has a category named sports
    assert_match "sports", response.body
  end

  # Integration End-to-End Test for Negative Scheme
  test "Invalid category submission results in failure" do
    # Admin sign in
    sign_in_as(@user, "password")
    # Admin access new category page
    get new_category_path
    # Template rendered should be views/categories/new.html.erb 
    assert_template 'categories/new'
    # Check that without name the category will not be created
    assert_no_difference 'Category.count' do
      post categories_path, params:{category:{name: " "}}
    end
    # Check Rendered page
    assert_template 'categories/new'
    assert_select 'h2.panel-title'
    assert_select 'div.alert.alert-danger.alert-dismissible.fade.show'
  end
end