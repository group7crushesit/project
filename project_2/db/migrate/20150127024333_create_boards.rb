class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.string :description
      t.string :type

      t.timestamps null: false

      t.references :users
    end
  end
end
