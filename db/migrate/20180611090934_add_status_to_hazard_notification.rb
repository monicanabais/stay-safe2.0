class AddStatusToHazardNotification < ActiveRecord::Migration[5.2]
  def change
    add_column :hazard_notifications, :status, :string, null: :false, default: 0
  end
end
