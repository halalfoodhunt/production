class CreateFriendsRewards < ActiveRecord::Migration
  def change
    create_table :friends_rewards do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
