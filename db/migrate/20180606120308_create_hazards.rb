class CreateHazards < ActiveRecord::Migration[5.2]
  def change
    create_table :hazards do |t|
      t.float :latitude
      t.float :longitude
      t.string :location
      t.string :type
      t.string :status

      t.timestamps
    end
  end
end
