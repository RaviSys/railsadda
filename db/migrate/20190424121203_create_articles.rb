class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :cover_image
      t.integer :user_id

      t.timestamps
    end
  end
end
