class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill

      t.timestamps null: false
      t.references :student
      t.references :skill
    end
  end
end
