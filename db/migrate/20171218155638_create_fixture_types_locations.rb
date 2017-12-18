class CreateFixtureTypesLocations < ActiveRecord::Migration
  def change
    create_table :fixture_types_locations, id: false do |t|
      t.integer "fixture_type_id"
      t.integer "location_id"
    end
    add_index :fixture_types_locations, "fixture_type_id"
    add_index :fixture_types_locations, "location_id"
  end
end
