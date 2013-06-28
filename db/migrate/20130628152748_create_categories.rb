class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nytID
      t.string :feedURL

      t.timestamps
    end
  end
end
