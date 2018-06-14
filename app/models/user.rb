class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,

  :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader

  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :hazard_notifications, foreign_key: 'notifiee_id'

  enum state: [:safe, :in_danger_zone, :outside_danger_zone]

  has_many :current_locations, dependent: :destroy

  include PgSearch

  pg_search_scope :search_for, against: [:first_name, :last_name, :email],
  using: { tsearch: { any_word: true, dictionary: :english, prefix: true}, :trigram => { :threshold => 0.1 }  },
  :associated_against => {
    comments: [:message],
    user: [:first_name, :last_name, :email]}


  def remove_friend(friend)
    self.friends.destroy(friend)
  end

  def friendship_with(friend)
    Friendship.where(user:self, friend:friend).first
  end

  def get_current_hazard
    notification = hazard_notifications.where(status: 0).first
    notification.hazard if notification
  end
end
