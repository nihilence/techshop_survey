class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :monthly_contribution
      t.integer :months_in_advance, default: 1
      t.integer :upfront_contribution
      t.text    :desired_location
      t.text    :ideas
      t.text    :skills
      t.text    :classes_taught
      t.string  :token
      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :token, unique: true
  end
end
