class AddFieldsToCelebrities < ActiveRecord::Migration
  def change
    add_column :celebrities, :twitter, :string
    add_index :celebrities, :twitter
    add_column :celebrities, :feacebook, :string
    add_index :celebrities, :feacebook
    add_column :celebrities, :website, :string
    add_index :celebrities, :website
    add_column :celebrities, :blog, :string
    add_index :celebrities, :blog
    add_column :celebrities, :youtube, :string
    add_index :celebrities, :youtube
    add_column :celebrities, :flickr, :string
    add_index :celebrities, :flickr
    add_column :celebrities, :wikipedia, :string
    add_index :celebrities, :wikipedia
  end
end
