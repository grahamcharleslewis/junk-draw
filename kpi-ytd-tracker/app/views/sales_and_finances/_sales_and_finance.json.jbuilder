json.extract! sales_and_finance, :id, :week_id, :lfl, :total_weekly_turnover, :delivery_turnover, :turnover, :budget, :footfall, :average_spend, :comments, :hours_last_year, :hours_this_year, :spmh, :returns, :stock_balance, :created_at, :updated_at
json.url sales_and_finance_url(sales_and_finance, format: :json)
