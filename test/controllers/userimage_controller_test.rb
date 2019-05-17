require 'test_helper'

class UserimageControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get userimage_update_url
    assert_response :success
  end

end
