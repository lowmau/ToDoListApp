require 'test_helper'

class UserListsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_lists_create_url
    assert_response :success
  end

end
