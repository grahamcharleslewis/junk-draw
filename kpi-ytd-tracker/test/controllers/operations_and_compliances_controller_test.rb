require "test_helper"

class OperationsAndCompliancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operations_and_compliance = operations_and_compliances(:one)
  end

  test "should get index" do
    get operations_and_compliances_url
    assert_response :success
  end

  test "should get new" do
    get new_operations_and_compliance_url
    assert_response :success
  end

  test "should create operations_and_compliance" do
    assert_difference("OperationsAndCompliance.count") do
      post operations_and_compliances_url, params: { operations_and_compliance: { eho: @operations_and_compliance.eho, essential_fs_and_legal: @operations_and_compliance.essential_fs_and_legal, health_and_safety: @operations_and_compliance.health_and_safety, just_eat: @operations_and_compliance.just_eat, retail_ops: @operations_and_compliance.retail_ops, uber_rating: @operations_and_compliance.uber_rating, week_id: @operations_and_compliance.week_id } }
    end

    assert_redirected_to operations_and_compliance_url(OperationsAndCompliance.last)
  end

  test "should show operations_and_compliance" do
    get operations_and_compliance_url(@operations_and_compliance)
    assert_response :success
  end

  test "should get edit" do
    get edit_operations_and_compliance_url(@operations_and_compliance)
    assert_response :success
  end

  test "should update operations_and_compliance" do
    patch operations_and_compliance_url(@operations_and_compliance), params: { operations_and_compliance: { eho: @operations_and_compliance.eho, essential_fs_and_legal: @operations_and_compliance.essential_fs_and_legal, health_and_safety: @operations_and_compliance.health_and_safety, just_eat: @operations_and_compliance.just_eat, retail_ops: @operations_and_compliance.retail_ops, uber_rating: @operations_and_compliance.uber_rating, week_id: @operations_and_compliance.week_id } }
    assert_redirected_to operations_and_compliance_url(@operations_and_compliance)
  end

  test "should destroy operations_and_compliance" do
    assert_difference("OperationsAndCompliance.count", -1) do
      delete operations_and_compliance_url(@operations_and_compliance)
    end

    assert_redirected_to operations_and_compliances_url
  end
end
