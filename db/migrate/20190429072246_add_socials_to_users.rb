class AddSocialsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :skype_id, :string
    add_column :users, :github_url, :string
    add_column :users, :linkedin_url, :string
  end
end
