class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :code
      t.integer :status
      t.string :name
      t.string :region
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
