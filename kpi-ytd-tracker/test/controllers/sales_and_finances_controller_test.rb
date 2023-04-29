require "test_helper"

class SalesAndFinancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_and_finance = sales_and_finances(:one)
  end

  test "should get index" do
    get sales_and_finances_url
    assert_response :success
  end

  test "should get new" do
    get new_sales_and_finance_url
    assert_response :success
  end

  test "should create sales_and_finance" do
    assert_difference("SalesAndFinance.count") do
      post sales_and_finances_url, params: { sales_and_finance: { average_spend: @sales_and_finance.average_spend, budget: @sales_and_finance.budget, comments: @sales_and_finance.comments, delivery_turnover: @sales_and_finance.delivery_turnover, footfall: @sales_and_finance.footfall, hours_last_year: @sales_and_finance.hours_last_year, hours_this_year: @sales_and_finance.hours_this_year, lfl: @sales_and_finance.lfl, returns: @sales_and_finance.returns, spmh: @sales_and_finance.spmh, stock_balance: @sales_and_finance.stock_balance, total_weekly_turnover: @sales_and_finance.total_weekly_turnover, turnover: @sales_and_finance.turnover, week_id: @sales_and_finance.week_id } }
    end

    assert_redirected_to sales_and_finance_url(SalesAndFinance.last)
  end

  test "should show sales_and_finance" do
    get sales_and_finance_url(@sales_and_finance)
    assert_response :success
  end

  test "should get edit" do
    get edit_sales_and_finance_url(@sales_and_finance)
    assert_response :success
  end

  test "should update sales_and_finance" do
    patch sales_and_finance_url(@sales_and_finance), params: { sales_and_finance: { average_spend: @sales_and_finance.average_spend, budget: @sales_and_finance.budget, comments: @sales_and_finance.comments, delivery_turnover: @sales_and_finance.delivery_turnover, footfall: @sales_and_finance.footfall, hours_last_year: @sales_and_finance.hours_last_year, hours_this_year: @sales_and_finance.hours_this_year, lfl: @sales_and_finance.lfl, returns: @sales_and_finance.returns, spmh: @sales_and_finance.spmh, stock_balance: @sales_and_finance.stock_balance, total_weekly_turnover: @sales_and_finance.total_weekly_turnover, turnover: @sales_and_finance.turnover, week_id: @sales_and_finance.week_id } }
    assert_redirected_to sales_and_finance_url(@sales_and_finance)
  end

  test "should destroy sales_and_finance" do
    assert_difference("SalesAndFinance.count", -1) do
      delete sales_and_finance_url(@sales_and_finance)
    end

    assert_redirected_to sales_and_finances_url
  end
end
