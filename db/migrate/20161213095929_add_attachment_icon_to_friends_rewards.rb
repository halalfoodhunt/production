class AddAttachmentIconToFriendsRewards < ActiveRecord::Migration
  def self.up
    change_table :friends_rewards do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :friends_rewards, :icon
  end
end
