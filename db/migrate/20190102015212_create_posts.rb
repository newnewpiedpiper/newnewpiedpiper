class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :votes
      t.integer :user_id
      t. integer :channel_id
      # Date of posting or last edit
      t.timestamps
    end
  end
  def down
    drop_table :posts
  end
end
