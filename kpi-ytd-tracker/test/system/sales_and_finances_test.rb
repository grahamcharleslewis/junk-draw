require "application_system_test_case"

class SalesAndFinancesTest < ApplicationSystemTestCase
  setup do
    @sales_and_finance = sales_and_finances(:one)
  end

  test "visiting the index" do
    visit sales_and_finances_url
    assert_selector "h1", text: "Sales and finances"
  end

  test "should create sales and finance" do
    visit sales_and_finances_url
    click_on "New sales and finance"

    fill_in "Average spend", with: @sales_and_finance.average_spend
    fill_in "Budget", with: @sales_and_finance.budget
    fill_in "Comments", with: @sales_and_finance.comments
    fill_in "Delivery turnover", with: @sales_and_finance.delivery_turnover
    fill_in "Footfall", with: @sales_and_finance.footfall
    fill_in "Hours last year", with: @sales_and_finance.hours_last_year
    fill_in "Hours this year", with: @sales_and_finance.hours_this_year
    fill_in "Lfl", with: @sales_and_finance.lfl
    fill_in "Returns", with: @sales_and_finance.returns
    fill_in "Spmh", with: @sales_and_finance.spmh
    fill_in "Stock balance", with: @sales_and_finance.stock_balance
    fill_in "Total weekly turnover", with: @sales_and_finance.total_weekly_turnover
    fill_in "Turnover", with: @sales_and_finance.turnover
    fill_in "Week", with: @sales_and_finance.week_id
    click_on "Create Sales and finance"

    assert_text "Sales and finance was successfully created"
    click_on "Back"
  end

  test "should update Sales and finance" do
    visit sales_and_finance_url(@sales_and_finance)
    click_on "Edit this sales and finance", match: :first

    fill_in "Average spend", with: @sales_and_finance.average_spend
    fill_in "Budget", with: @sales_and_finance.budget
    fill_in "Comments", with: @sales_and_finance.comments
    fill_in "Delivery turnover", with: @sales_and_finance.delivery_turnover
    fill_in "Footfall", with: @sales_and_finance.footfall
    fill_in "Hours last year", with: @sales_and_finance.hours_last_year
    fill_in "Hours this year", with: @sales_and_finance.hours_this_year
    fill_in "Lfl", with: @sales_and_finance.lfl
    fill_in "Returns", with: @sales_and_finance.returns
    fill_in "Spmh", with: @sales_and_finance.spmh
    fill_in "Stock balance", with: @sales_and_finance.stock_balance
    fill_in "Total weekly turnover", with: @sales_and_finance.total_weekly_turnover
    fill_in "Turnover", with: @sales_and_finance.turnover
    fill_in "Week", with: @sales_and_finance.week_id
    click_on "Update Sales and finance"

    assert_text "Sales and finance was successfully updated"
    click_on "Back"
  end

  test "should destroy Sales and finance" do
    visit sales_and_finance_url(@sales_and_finance)
    click_on "Destroy this sales and finance", match: :first

    assert_text "Sales and finance was successfully destroyed"
  end
end
