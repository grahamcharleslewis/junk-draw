class CreateOperationsAndCompliances < ActiveRecord::Migration[7.0]
  def change
    create_table :operations_and_compliances do |t|
      t.integer :week_id
      t.float :essential_fs_and_legal
      t.float :retail_ops
      t.float :health_and_safety
      t.float :uber_rating
      t.float :just_eat
      t.float :eho

      t.timestamps
    end
  end
end
