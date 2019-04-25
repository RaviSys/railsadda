class AddSlugToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :slug, :string
    add_column :articles, :slug, :string
    add_index :questions, :slug, unique: true
    add_index :articles, :slug, unique: true
  end
end
