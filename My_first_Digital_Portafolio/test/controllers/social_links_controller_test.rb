require "test_helper"

class SocialLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_link = social_links(:one)
  end

  test "should get index" do
    get social_links_url
    assert_response :success
  end

  test "should get new" do
    get new_social_link_url
    assert_response :success
  end

  test "should create social_link" do
    assert_difference("SocialLink.count") do
      post social_links_url, params: { social_link: { name: @social_link.name, url: @social_link.url } }
    end

    assert_redirected_to social_link_url(SocialLink.last)
  end

  test "should show social_link" do
    get social_link_url(@social_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_link_url(@social_link)
    assert_response :success
  end

  test "should update social_link" do
    patch social_link_url(@social_link), params: { social_link: { name: @social_link.name, url: @social_link.url } }
    assert_redirected_to social_link_url(@social_link)
  end

  test "should destroy social_link" do
    assert_difference("SocialLink.count", -1) do
      delete social_link_url(@social_link)
    end

    assert_redirected_to social_links_url
  end
end
