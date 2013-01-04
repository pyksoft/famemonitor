class AddSlugToCelebrities < ActiveRecord::Migration
  def change
    add_column :celebrities, :slug, :string
    add_index :celebrities, :slug, unique: true
  end
end
