require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "sports")
  end

  test "Category should be valid" do
    # Simple test: can create
    assert @category.valid?
  end

  test "Category name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "Category Name should be unique" do
    @category.save
    new_category = Category.new(name: "sports")
    assert_not new_category.valid?
  end

  test "Category Name should not be to long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end

  test "Category name should not be to short" do
    @category.name = "aa"
    assert_not @category.valid?
  end
end