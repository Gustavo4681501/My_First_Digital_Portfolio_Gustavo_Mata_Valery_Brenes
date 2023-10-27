require "application_system_test_case"

class SkillTypesTest < ApplicationSystemTestCase
  setup do
    @skill_type = skill_types(:one)
  end

  test "visiting the index" do
    visit skill_types_url
    assert_selector "h1", text: "Skill types"
  end

  test "should create skill type" do
    visit skill_types_url
    click_on "New skill type"

    fill_in "Name", with: @skill_type.name
    click_on "Create Skill type"

    assert_text "Skill type was successfully created"
    click_on "Back"
  end

  test "should update Skill type" do
    visit skill_type_url(@skill_type)
    click_on "Edit this skill type", match: :first

    fill_in "Name", with: @skill_type.name
    click_on "Update Skill type"

    assert_text "Skill type was successfully updated"
    click_on "Back"
  end

  test "should destroy Skill type" do
    visit skill_type_url(@skill_type)
    click_on "Destroy this skill type", match: :first

    assert_text "Skill type was successfully destroyed"
  end
end
