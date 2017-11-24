class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.integer :category_id, null: false
      t.string  :name, null: false
      t.timestamps
    end
  end
end
