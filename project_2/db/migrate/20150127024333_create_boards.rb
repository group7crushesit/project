class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.string :description
      t.string :type

      t.timestamps null: false
<<<<<<< HEAD

      t.references :users
=======
>>>>>>> bf24e511e3d5bb2dadbf49aa7a167a45b3f54d99
    end
  end
end
