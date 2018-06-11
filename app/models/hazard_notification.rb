class HazardNotification < ApplicationRecord
  belongs_to :user
  belongs_to :hazard
  belongs_to :notifiee, foreign_key: 'notifiee_id', class_name: 'User'

  #enum status: [:in_danger_zone, :safe, :outside_danger_zone]
  enum status: [:active, :inactive]

  #scope :active, -> { where(status: :in_danger_zone)}
end
