class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string "name"
      t.integer "rent"
      t.string "address"
      t.integer "age_of_building"
      t.text "note"
      t.timestamps
    end
  end
end
