class AddAcceptedToFriendRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :friend_requests, :accepted, :boolean, default: false
  end
end
