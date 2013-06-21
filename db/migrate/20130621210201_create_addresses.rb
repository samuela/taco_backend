class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :neighborhood

      t.timestamps
    end
  end
end
