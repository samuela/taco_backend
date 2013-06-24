class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.string :open
      t.string :closed

      t.timestamps
    end
  end
end
