class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.text :street_address
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
