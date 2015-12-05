class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :requester_id, index: true, foreign_key: true
      t.integer :requestee_id, index: true, foreign_key: true
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
