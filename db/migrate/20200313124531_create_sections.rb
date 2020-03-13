class CreateSections < ActiveRecord::Migration[6.0]

  def up
    create_table :sections do |t|
      t.integer :page_id
      t.string :name
      t.integer :position
      t.boolean :visible
      t.string :content_type
      t.text :content

      t.timestamps
    end
    add_foreign_key :sections, :pages
    add_index :sections, :page_id
  end

  def down
    remove_index :sections
    remove_foreign_key :sections, :pages
    drop_table :sections
  end
end
