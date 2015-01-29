class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.date :enrollment_date

      t.timestamps null: false

       t.references :user
      t.references :course
      
    end
  end
end
