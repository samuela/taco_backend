class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :description
      t.integer :price_range

      t.timestamps
    end
  end
end
