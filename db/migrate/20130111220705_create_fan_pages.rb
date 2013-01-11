class CreateFanPages < ActiveRecord::Migration
  def change
    create_table :fan_pages do |t|
      t.integer :celebrity_id
      t.integer :user_id
      t.string :url
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :fan_pages, :celebrity_id
    add_index :fan_pages, :user_id
    add_index :fan_pages, :url
    add_index :fan_pages, :name
  end
end
