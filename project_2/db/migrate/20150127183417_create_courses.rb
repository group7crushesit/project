class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :full_name
      t.string :location
      t.string :course_type
      t.text :description

      t.timestamps null: false
    end
  end
end
