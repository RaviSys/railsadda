class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
