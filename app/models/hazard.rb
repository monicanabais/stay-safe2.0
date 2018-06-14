class Hazard < ApplicationRecord
  has_many :hazard_notifications, dependent: :delete_all
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :kind, acceptance: { accept: ['Forest fire', 'Building fire'] }
  validates :state, acceptance: { accept: ['Active', 'Contained', 'Extinct'] }

  after_create :find_and_notify_nearby_people

  def find_and_notify_nearby_people

    people_nearby = CurrentLocation.near([self.latitude, self.longitude], 10).map(&:user)

    people_nearby.each do |user|
      user.friends.each do |friend|
        HazardNotification.create(user: user, hazard: self, notifiee: friend)
      end
      HazardNotification.create(user: user, hazard: self, notifiee: user)
      user.update(state: :in_danger_zone)
    end
  end
end
