class CreateUserskills < ActiveRecord::Migration
  def change
    create_table :userskills do |t|
      t.integer :user_id
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end
