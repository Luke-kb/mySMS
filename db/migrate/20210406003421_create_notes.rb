class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title, null: false, default: ""
      t.text :content, null: false
      t.references :notable, polymorphic: true

      t.timestamps
    end
  end
end
