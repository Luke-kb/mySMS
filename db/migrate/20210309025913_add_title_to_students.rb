class AddTitleToStudents < ActiveRecord::Migration
  def change
    add_column :students, :title, :string
  end
end
