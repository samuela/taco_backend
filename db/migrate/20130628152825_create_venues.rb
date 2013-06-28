class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :nytID
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
