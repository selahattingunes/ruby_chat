require "application_system_test_case"

class UserphotosTest < ApplicationSystemTestCase
  setup do
    @userphoto = userphotos(:one)
  end

  test "visiting the index" do
    visit userphotos_url
    assert_selector "h1", text: "Userphotos"
  end

  test "creating a Userphoto" do
    visit userphotos_url
    click_on "New Userphoto"

    fill_in "Alt", with: @userphoto.alt
    click_on "Create Userphoto"

    assert_text "Userphoto was successfully created"
    click_on "Back"
  end

  test "updating a Userphoto" do
    visit userphotos_url
    click_on "Edit", match: :first

    fill_in "Alt", with: @userphoto.alt
    click_on "Update Userphoto"

    assert_text "Userphoto was successfully updated"
    click_on "Back"
  end

  test "destroying a Userphoto" do
    visit userphotos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userphoto was successfully destroyed"
  end
end
