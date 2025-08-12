require "application_system_test_case"

class LinksTest < ApplicationSystemTestCase
  setup do
    @link = links(:one)
  end

  test "visiting the index" do
    visit links_url
    assert_selector "h1", text: "Links"
  end

  test "should create link" do
    visit links_url
    click_on "New link"

    fill_in "Hyperlink", with: @link.hyperlink
    fill_in "Tiny code", with: @link.tiny_code
    fill_in "Title", with: @link.title
    click_on "Create Link"

    assert_text "Link was successfully created"
    click_on "Back"
  end

  test "should update Link" do
    visit link_url(@link)
    click_on "Edit this link", match: :first

    fill_in "Hyperlink", with: @link.hyperlink
    fill_in "Tiny code", with: @link.tiny_code
    fill_in "Title", with: @link.title
    click_on "Update Link"

    assert_text "Link was successfully updated"
    click_on "Back"
  end

  test "should destroy Link" do
    visit link_url(@link)
    accept_confirm { click_on "Destroy this link", match: :first }

    assert_text "Link was successfully destroyed"
  end
end
