class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :title, null: false, default: ""
      t.string :first_name, null: false, default: ""
      t.string :middle_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :email, null: false
      t.date :birth_date, null: false
      t.string :gender, null: false

      t.timestamps
    end
  end
end
