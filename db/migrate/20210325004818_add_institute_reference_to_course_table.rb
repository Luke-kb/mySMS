class AddInstituteReferenceToCourseTable < ActiveRecord::Migration
  def up
    add_column :courses, :institute_id, :integer, null: false
    add_index :courses, :institute_id
  end

  def down
    remove_column :courses, :institute_id
  end
end
