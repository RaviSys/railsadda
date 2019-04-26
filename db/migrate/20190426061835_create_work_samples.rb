class CreateWorkSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :work_samples do |t|
      t.string :name
      t.text :description
      t.string :codebase_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
