class CreateTripPlaceships < ActiveRecord::Migration
  def change
    create_table :trip_placeships do |t|
      t.integer :trip_id
      t.integer :place_id

      t.timestamps
    end
  end
end
