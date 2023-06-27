class CreateClimes < ActiveRecord::Migration[7.0]
  def change
    create_table :climes do |t|
      t.string :city
      t.string :country
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :temperature
      t.decimal :measured_temperature

      t.timestamps
    end
  end
end
