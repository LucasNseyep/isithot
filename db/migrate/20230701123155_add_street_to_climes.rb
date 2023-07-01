class AddStreetToClimes < ActiveRecord::Migration[7.0]
  def change
    add_column :climes, :street, :string
  end
end
