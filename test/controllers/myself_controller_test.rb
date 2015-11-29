require 'test_helper'

class MyselfControllerTest < ActionController::TestCase
  test "should get info_page" do
    get :info_page
    assert_response :success
  end

end
