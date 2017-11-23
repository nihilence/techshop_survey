class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.integer :user_id, null: false 
      t.timestamps
    end
  end
end
