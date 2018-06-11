class HazardNotification < ApplicationRecord
  belongs_to :user
  belongs_to :hazard
  belongs_to :notifiee, foreign_key: 'notifiee_id', class_name: 'User'
end
