class AddChannelImageToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :channel_image_id, :string
    add_column :channels, :channel_image_filename, :string
    add_column :channels, :channel_image_size, :string
    add_column :channels, :channel_image_type, :string
  end
end
