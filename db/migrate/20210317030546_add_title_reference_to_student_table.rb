class AddTitleReferenceToStudentTable < ActiveRecord::Migration
  def change
    # add foreign key title_id column
     change_table :students do |t|
      t.references :title, null: false

    end
  end
end
