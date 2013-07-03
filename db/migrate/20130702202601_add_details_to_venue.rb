class AddDetailsToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :venue_name, :string
    add_column :venues, :time_of_day, :string
  end
end
