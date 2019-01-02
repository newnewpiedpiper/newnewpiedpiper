class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.text :password
      t.string :subscriptions
      # creation of account
      t.datetime :date
    end
  end
  def down
    drop_table :users
  end
end
