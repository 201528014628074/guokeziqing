require 'test_helper'

class PostControllerTest < ActionController::TestCase
  test "should get post_page" do
    get :post_page
    assert_response :success
  end

end
