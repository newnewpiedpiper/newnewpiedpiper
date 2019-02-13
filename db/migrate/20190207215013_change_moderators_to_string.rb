class ChangeModeratorsToString < ActiveRecord::Migration
  def change
    change_column :channels, :moderators, :string
  end
end
