require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  test "should get groups_page" do
    get :groups_page
    assert_response :success
  end

end
