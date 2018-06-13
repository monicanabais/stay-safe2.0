class CurrentLocation < ApplicationRecord
  belongs_to :user
  has_many :hazard_notifications, through: :user

  reverse_geocoded_by :latitude, :longitude
  #after_validation :reverse_geocode

  after_create :check_for_hazards

  def check_for_hazards
    hazards_nearby = Hazard.near([self.latitude, self.longitude], 20)

    if hazards_nearby.present?
      hazards_nearby.each do |hazard|
        HazardNotification.create(user: self.user, hazard: hazard, notifiee: self.user)
        self.user.friends.each do |friend|
        HazardNotification.create(user: self.user, hazard: hazard, notifiee: friend)
        self.user.update(state: :in_danger_zone)
        end
      end
    end
  end


end
