class CreateTwitterCounts < ActiveRecord::Migration
  def change
    create_table :twitter_counts do |t|
      t.integer :celebrity_id
      t.integer :followers
      t.integer :following
      t.integer :tweets

      t.timestamps
    end
    add_index :twitter_counts, :celebrity_id
    add_index :twitter_counts, :followers
    add_index :twitter_counts, :following
    add_index :twitter_counts, :tweets
  end
end
