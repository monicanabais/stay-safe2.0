class AddReferenceToHazardNotification < ActiveRecord::Migration[5.2]
  def change
    add_reference :hazard_notifications, :notifiee, index: true
  end
end
