class RemoveFieldNameFromVenue < ActiveRecord::Migration
  def up
    remove_column :venues, :website
  end

  def down
    add_column :venues, :website, :string
  end
end
