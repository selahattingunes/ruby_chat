require 'test_helper'

class UserphotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userphoto = userphotos(:one)
  end

  test "should get index" do
    get userphotos_url
    assert_response :success
  end

  test "should get new" do
    get new_userphoto_url
    assert_response :success
  end

  test "should create userphoto" do
    assert_difference('Userphoto.count') do
      post userphotos_url, params: { userphoto: { alt: @userphoto.alt } }
    end

    assert_redirected_to userphoto_url(Userphoto.last)
  end

  test "should show userphoto" do
    get userphoto_url(@userphoto)
    assert_response :success
  end

  test "should get edit" do
    get edit_userphoto_url(@userphoto)
    assert_response :success
  end

  test "should update userphoto" do
    patch userphoto_url(@userphoto), params: { userphoto: { alt: @userphoto.alt } }
    assert_redirected_to userphoto_url(@userphoto)
  end

  test "should destroy userphoto" do
    assert_difference('Userphoto.count', -1) do
      delete userphoto_url(@userphoto)
    end

    assert_redirected_to userphotos_url
  end
end
