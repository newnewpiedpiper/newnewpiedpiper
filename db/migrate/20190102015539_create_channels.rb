class CreateChannels < ActiveRecord::Migration
  def up
    create_table :channels do |t|
      t.string :channel_name
      t.text :channel_description
      t.text :channel_guidlines
      t.string :moderators
    end
  end
  def down
    drop_table :channels
  end
end
