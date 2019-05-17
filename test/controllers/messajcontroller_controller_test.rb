require 'test_helper'

class MessajcontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get messajcontroller_create_url
    assert_response :success
  end

end
