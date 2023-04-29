class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.integer :week_id
      t.float :leavers
      t.float :number_of_staff
      t.float :staffing_level
      t.float :e_learning

      t.timestamps
    end
  end
end
