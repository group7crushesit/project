class CreateUserinterests < ActiveRecord::Migration
  def change
    create_table :userinterests do |t|
      t.integer :user_id
      t.integer :interest_id

      t.timestamps null: false

      t.references :student
      t.references :interest
    end
  end
end
