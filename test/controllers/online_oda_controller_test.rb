require 'test_helper'

class OnlineOdaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get online_oda_index_url
    assert_response :success
  end

end
