class AddSlugToWorkSamples < ActiveRecord::Migration[5.2]
  def change
    add_column :work_samples, :slug, :string
    add_index :work_samples, :slug, unique: true
  end
end
