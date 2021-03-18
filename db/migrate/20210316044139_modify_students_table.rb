class ModifyStudentsTable < ActiveRecord::Migration
  
  def up
    rename_column(:students, :title, :old_title)
  end

  def down
    remove_column(:students, :old_title, :title)
  end

end
