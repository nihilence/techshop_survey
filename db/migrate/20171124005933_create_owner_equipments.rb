class CreateOwnerEquipments < ActiveRecord::Migration[5.1]
  def change
    create_table :owner_equipments do |t|
      t.integer :user_id, null: false
      t.integer :equipment_id, null: false
      t.timestamps
    end
  end
end
