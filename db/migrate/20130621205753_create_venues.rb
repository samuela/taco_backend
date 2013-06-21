class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :website
      t.string :phone_number

      t.timestamps
    end
  end
end
