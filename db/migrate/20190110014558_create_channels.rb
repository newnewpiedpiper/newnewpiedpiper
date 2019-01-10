class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.text :channel_name
      t.text :channel_description
      t.text :channel_guidelines
      t.integer :moderators
      t.text :postid

      t.timestamps null: false
    end
  end
end
