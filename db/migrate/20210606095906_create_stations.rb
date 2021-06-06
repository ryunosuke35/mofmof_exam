class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string "route_name"
      t.string "station_name"
      t.string "minutes_of_foot"
      t.timestamps
    end
  end
end
