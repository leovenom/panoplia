require "application_system_test_case"

class ShottsTest < ApplicationSystemTestCase
  setup do
    @shott = shotts(:one)
  end

  test "visiting the index" do
    visit shotts_url
    assert_selector "h1", text: "Shotts"
  end

  test "creating a Shott" do
    visit shotts_url
    click_on "New Shott"

    fill_in "Description", with: @shott.description
    fill_in "Title", with: @shott.title
    fill_in "User", with: @shott.user_id
    click_on "Create Shott"

    assert_text "Shott was successfully created"
    click_on "Back"
  end

  test "updating a Shott" do
    visit shotts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @shott.description
    fill_in "Title", with: @shott.title
    fill_in "User", with: @shott.user_id
    click_on "Update Shott"

    assert_text "Shott was successfully updated"
    click_on "Back"
  end

  test "destroying a Shott" do
    visit shotts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shott was successfully destroyed"
  end
end
