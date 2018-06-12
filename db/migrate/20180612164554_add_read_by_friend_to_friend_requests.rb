class AddReadByFriendToFriendRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :friend_requests, :read_by_friend, :boolean, default: false
  end
end
