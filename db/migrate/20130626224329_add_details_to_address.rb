class AddDetailsToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :city, :string
    add_column :addresses, :zipcode, :string
    add_column :addresses, :street, :string
    add_column :addresses, :crossstreet, :string
  end
end
