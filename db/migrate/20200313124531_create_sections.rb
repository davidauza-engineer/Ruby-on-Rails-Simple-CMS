class CreateSections < ActiveRecord::Migration[6.0]

  def up
    create_table :sections do |t|
      t.bigint :page_id
      t.string :name
      t.integer :position
      t.boolean :visible, default: false
      t.string :content_type
      t.text :content

      t.timestamps
    end
    add_index :sections, :page_id
    # add_foreign_key :sections, :pages
  end

  def down
    # remove_foreign_key :sections, :pages
    # remove_index :sections, :page_id
    # don't need to drop indexes when dropping the whole table
    drop_table :sections
  end
end
