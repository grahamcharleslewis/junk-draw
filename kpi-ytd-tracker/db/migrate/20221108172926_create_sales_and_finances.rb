class CreateSalesAndFinances < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_and_finances do |t|
      t.integer :week_id
      t.float :lfl
      t.float :total_weekly_turnover
      t.float :delivery_turnover
      t.float :turnover
      t.float :budget
      t.float :footfall
      t.float :average_spend
      t.text :comments
      t.float :hours_last_year
      t.float :hours_this_year
      t.float :spmh
      t.float :returns
      t.float :stock_balance

      t.timestamps
    end
  end
end
