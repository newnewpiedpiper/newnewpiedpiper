class AddMediaContentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :media_content_id, :string
    add_column :posts, :media_content_filename, :string
    add_column :posts, :media_content_size, :string
    add_column :posts, :media_content_type, :string
  end
end
