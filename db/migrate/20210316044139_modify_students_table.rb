class ModifyStudentsTable < ActiveRecord::Migration
  
  def up
    # add foregin key title_id column
    change_table :students do |t|
      t.references :title
    end
  end

  def down
    remove_column(:students, :title_id)   
  end

end
