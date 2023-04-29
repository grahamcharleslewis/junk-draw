require "application_system_test_case"

class OperationsAndCompliancesTest < ApplicationSystemTestCase
  setup do
    @operations_and_compliance = operations_and_compliances(:one)
  end

  test "visiting the index" do
    visit operations_and_compliances_url
    assert_selector "h1", text: "Operations and compliances"
  end

  test "should create operations and compliance" do
    visit operations_and_compliances_url
    click_on "New operations and compliance"

    fill_in "Eho", with: @operations_and_compliance.eho
    fill_in "Essential fs and legal", with: @operations_and_compliance.essential_fs_and_legal
    fill_in "Health and safety", with: @operations_and_compliance.health_and_safety
    fill_in "Just eat", with: @operations_and_compliance.just_eat
    fill_in "Retail ops", with: @operations_and_compliance.retail_ops
    fill_in "Uber rating", with: @operations_and_compliance.uber_rating
    fill_in "Week", with: @operations_and_compliance.week_id
    click_on "Create Operations and compliance"

    assert_text "Operations and compliance was successfully created"
    click_on "Back"
  end

  test "should update Operations and compliance" do
    visit operations_and_compliance_url(@operations_and_compliance)
    click_on "Edit this operations and compliance", match: :first

    fill_in "Eho", with: @operations_and_compliance.eho
    fill_in "Essential fs and legal", with: @operations_and_compliance.essential_fs_and_legal
    fill_in "Health and safety", with: @operations_and_compliance.health_and_safety
    fill_in "Just eat", with: @operations_and_compliance.just_eat
    fill_in "Retail ops", with: @operations_and_compliance.retail_ops
    fill_in "Uber rating", with: @operations_and_compliance.uber_rating
    fill_in "Week", with: @operations_and_compliance.week_id
    click_on "Update Operations and compliance"

    assert_text "Operations and compliance was successfully updated"
    click_on "Back"
  end

  test "should destroy Operations and compliance" do
    visit operations_and_compliance_url(@operations_and_compliance)
    click_on "Destroy this operations and compliance", match: :first

    assert_text "Operations and compliance was successfully destroyed"
  end
end
