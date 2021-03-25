class AddInstituteReferenceToCourseTable < ActiveRecord::Migration
  def change
    # add foreign key institute_id column
    change_table :courses do |t|
      t.references :institute, null: false
    end
  end
end
