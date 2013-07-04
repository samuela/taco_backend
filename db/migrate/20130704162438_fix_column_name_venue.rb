class FixColumnNameVenue < ActiveRecord::Migration
  def up
  	rename_column :venues, :time_of_day, :tags
  end

  def down
  end
end
