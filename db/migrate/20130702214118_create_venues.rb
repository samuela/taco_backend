class CreateVenues < ActiveRecord::Migration
  def change
    drop_table :venues
    create_table :venues do |t|
      t.string :venue_name
      t.string :time_of_day
      t.string :latitude
      t.string :longitude
      t.string :nytID
      t.string :website

      t.timestamps
    end
  end
end
