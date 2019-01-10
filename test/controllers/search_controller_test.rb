require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_fn" do
    get search_search_fn_url
    assert_response :success
  end

end
