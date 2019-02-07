class AddSubscriptionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subscriptions, :string
  end
end
