class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.integer :week_id
      t.string :klass_name
      t.string :klass_attribute
      t.float :target

      t.timestamps
    end
  end
end
