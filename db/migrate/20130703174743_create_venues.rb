class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :latitude
      t.string :longitude
      t.string :nytID
      t.string :tags
      t.string :venue_name
      t.string :website
      t.timestamps
    end
  end
end
