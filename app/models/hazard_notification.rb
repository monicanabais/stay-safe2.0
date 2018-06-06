class HazardNotification < ApplicationRecord
  belongs_to :user
  belongs_to :hazard
end
