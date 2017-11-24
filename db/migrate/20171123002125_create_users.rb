class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.integer  :monthly_contribution
      t.integer :months_in_advance, default: 1
      t.integer :funding_donation
      t.text    :funding_details
      t.timestamps
    end
  end
end
