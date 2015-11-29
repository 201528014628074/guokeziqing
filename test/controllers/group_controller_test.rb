require 'test_helper'

class GroupControllerTest < ActionController::TestCase
  test "should get group_page" do
    get :group_page
    assert_response :success
  end

end
