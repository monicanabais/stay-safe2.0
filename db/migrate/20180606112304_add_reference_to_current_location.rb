class AddReferenceToCurrentLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :current_locations, :user, foreign_key: true
  end
end
