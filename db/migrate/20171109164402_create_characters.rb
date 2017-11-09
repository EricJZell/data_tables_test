class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :movie
      t.text :quote
      t.string :actor
      t.integer :year

      t.timestamps null: false
    end
  end
end
