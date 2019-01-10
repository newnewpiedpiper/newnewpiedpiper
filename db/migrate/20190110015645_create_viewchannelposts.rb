class CreateViewchannelposts < ActiveRecord::Migration
  def change
    create_table :viewchannelposts do |t|
      t.integer :postid

      t.timestamps null: false
    end
  end
end
