class AddCategoryIdToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :category_id, :integer
  end
end
