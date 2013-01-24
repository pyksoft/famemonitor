class ChangeFaecebookToFacebookOnCelebrities < ActiveRecord::Migration
  def up
    rename_column :celebrities, :feacebook, :facebook
  end

  def down
  end
end
