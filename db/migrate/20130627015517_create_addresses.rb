class CreateAddresses < ActiveRecord::Migration
  def change
    drop_table :addresses
    create_table :addresses do |t|
      t.string :latitude
      t.string :longitude
      t.string :city
      t.string :zipcode
      t.string :neighborhood
      t.string :street
      t.string :crossstreet

      t.timestamps
    end
  end
end
