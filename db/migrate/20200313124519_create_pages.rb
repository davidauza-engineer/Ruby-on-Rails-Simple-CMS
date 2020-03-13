class CreatePages < ActiveRecord::Migration[6.0]

  def up
    create_table :pages do |t|
      t.integer :subject_id
      t.string :name
      t.integer :permalink
      t.integer :position
      t.boolean :visible

      t.timestamps
    end
    add_foreign_key :pages, :subjects
    add_index :pages, :subject_id
  end

  def down
    remove_index :pages
    remove_foreign_key :pages, :subjects
    drop_table :pages
  end
end
