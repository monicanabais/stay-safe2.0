class Friendship < ApplicationRecord
  after_create :create_inverse_relationship
  after_destroy :destroy_inverse_relationship
  after_destroy :destroy_friend_request

  belongs_to :user
  belongs_to :friend, class_name: 'User'
  validates :user, presence: true
  validates :friend, presence: true, uniqueness: { scope: :user }
  validate :not_self

  private

  def not_self
    errors.add(:friend, "can't be equal to user") if user == friend
  end

  def create_inverse_relationship
    friend.friendships.create(friend: user)
  end

  def destroy_inverse_relationship
    friendship = friend.friendships.find_by(friend: user)
    friendship.destroy if friendship
  end

  def destroy_friend_request
    FriendRequest.where(user: user).where(friend: friend).destroy_all
    FriendRequest.where(user: friend).where(friend: user).destroy_all
  end
end
