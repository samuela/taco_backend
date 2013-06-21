class AddLatLongToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :longitude, :float
    add_column :addresses, :latitude, :float
  end
end
