class CreateCurrentLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :current_locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :location

      t.timestamps
    end
  end
end
