class Hazard < ApplicationRecord
  has_many :hazard_notifications

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_address?
end
