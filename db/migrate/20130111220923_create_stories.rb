class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.integer :user_id
      t.text :body
      t.integer :celebrity_id

      t.timestamps
    end
    add_index :stories, :title
    add_index :stories, :user_id
    add_index :stories, :celebrity_id
  end
end
