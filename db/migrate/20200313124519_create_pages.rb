class CreatePages < ActiveRecord::Migration[6.0]

  def up
    create_table :pages do |t|
      t.bigint :subject_id
      t.string :name
      t.integer :permalink
      t.integer :position
      t.boolean :visible, default: false

      t.timestamps
    end
    add_index :pages, :subject_id
    add_index :pages, :permalink
    # add_foreign_key :pages, :subjects
  end

  def down
    # remove_foreign_key :pages, :subjects
    # remove_index :pages, :permalink
    # remove_index :pages, :subject_id
    # don't need to drop indexes when dropping the whole table
    drop_table :pages
  end
end
