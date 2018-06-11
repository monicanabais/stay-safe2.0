class AddReadToHazardNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :hazard_notifications, :read, :boolean, default: false
  end
end
