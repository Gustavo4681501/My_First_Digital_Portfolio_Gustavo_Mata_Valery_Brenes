require "application_system_test_case"

class SocialLinksTest < ApplicationSystemTestCase
  setup do
    @social_link = social_links(:one)
  end

  test "visiting the index" do
    visit social_links_url
    assert_selector "h1", text: "Social links"
  end

  test "should create social link" do
    visit social_links_url
    click_on "New social link"

    fill_in "Name", with: @social_link.name
    fill_in "Url", with: @social_link.url
    click_on "Create Social link"

    assert_text "Social link was successfully created"
    click_on "Back"
  end

  test "should update Social link" do
    visit social_link_url(@social_link)
    click_on "Edit this social link", match: :first

    fill_in "Name", with: @social_link.name
    fill_in "Url", with: @social_link.url
    click_on "Update Social link"

    assert_text "Social link was successfully updated"
    click_on "Back"
  end

  test "should destroy Social link" do
    visit social_link_url(@social_link)
    click_on "Destroy this social link", match: :first

    assert_text "Social link was successfully destroyed"
  end
end
