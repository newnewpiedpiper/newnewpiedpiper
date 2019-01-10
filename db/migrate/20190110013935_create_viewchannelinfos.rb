class CreateViewchannelinfos < ActiveRecord::Migration
  def change
    create_table :viewchannelinfos do |t|
      t.text :channel_name
      t.text :channel_description
      t.text :channel_guidelines
      t.integer :moderators
      t.text :channel_post_id
      t.integer :postid

      t.timestamps null: false
    end
  end
end
