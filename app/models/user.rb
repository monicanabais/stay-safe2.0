class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,

  :recoverable, :rememberable, :trackable, :validatable
  #mount_uploader :avatar, PhotoUploader

  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

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

  def friends_notified
    self.friendships._select! do |friend|
      HazardNotification.where(user: friend).map(&:user).include? self.friendships
    end
  end

  def friendship_with(friend)
    Friendship.where(user:self, friend:friend).first
  end
end





# pg_search_scope :search_by_first_name_and_last_name_and_email,
#     against: [ :first_name, :last_name, :email ],
#     using: {
#       tsearch: { prefix: true }
#     }











