require 'test_helper'

class AddFoodItemControllerTest < ActionDispatch::IntegrationTest
  test "should get add_item" do
    get add_food_item_add_item_url
    assert_response :success
  end

end
