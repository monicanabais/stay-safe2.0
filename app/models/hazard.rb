class Hazard < ApplicationRecord
  has_many :hazard_notifications

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  after_save :find_and_notify_nearby_people

  def find_and_notify_nearby_people
    people_nearby = CurrentLocation.near(self.location, 10).map(&:user)
    people_nearby.each do |user|
      HazardNotification.create(user: user, hazard: self)
      user.update(state: :in_danger_zone)
      user.friendships.each do |friend|
        HazardNotification.create(user: friend, hazard: self)
      end
    end
  end
end
