class CreateWeeks < ActiveRecord::Migration[7.0]
  def change
    create_table :weeks do |t|
      t.integer :week_no
      t.date :date_commencing

      t.timestamps
    end
  end
end
