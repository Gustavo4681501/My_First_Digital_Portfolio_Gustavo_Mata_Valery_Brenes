require "test_helper"

class SkillTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_type = skill_types(:one)
  end

  test "should get index" do
    get skill_types_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_type_url
    assert_response :success
  end

  test "should create skill_type" do
    assert_difference("SkillType.count") do
      post skill_types_url, params: { skill_type: { name: @skill_type.name } }
    end

    assert_redirected_to skill_type_url(SkillType.last)
  end

  test "should show skill_type" do
    get skill_type_url(@skill_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_type_url(@skill_type)
    assert_response :success
  end

  test "should update skill_type" do
    patch skill_type_url(@skill_type), params: { skill_type: { name: @skill_type.name } }
    assert_redirected_to skill_type_url(@skill_type)
  end

  test "should destroy skill_type" do
    assert_difference("SkillType.count", -1) do
      delete skill_type_url(@skill_type)
    end

    assert_redirected_to skill_types_url
  end
end
