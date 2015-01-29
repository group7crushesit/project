class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :linkedin_url
      t.string :github_url
      t.string :dribbble_url
      t.string :behance_url
      t.string :website_url
      t.string :first_name
      t.string :last_name
      t.boolean :student
      t.boolean :ga_staff
      t.boolean :outsider
      t.text :bio

      t.timestamps null: false
    end
  end
end
