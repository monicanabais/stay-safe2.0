class AddReadToFriendRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :friend_requests, :read, :boolean, default: false
  end
end
