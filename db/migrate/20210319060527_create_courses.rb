class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :number_of_semesters, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :allocation, null: false

      t.timestamps
    end
  end
end
