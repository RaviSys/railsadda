class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :about, :text
    add_column :users, :profile_pic, :string
    add_column :users, :display_title, :string
  end
end
