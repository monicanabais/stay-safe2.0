class Hazard < ApplicationRecord
  has_many :hazard_notifications

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  after_create :find_and_notify_nearby_people

  def find_and_notify_nearby_people
    people_nearby = CurrentLocation.near([self.latitude, self.longitude], 20).map(&:user)

    people_nearby.each do |user|
      user.friends.each do |friend|
        HazardNotification.create(user: user, hazard: self, notifiee: friend)
      end
        HazardNotification.create(user: user, hazard: self, notifiee: user)
        user.update(state: :in_danger_zone)
    end
  end
end
