class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.integer :year
      t.string :model
      t.string :color
      t.string :licence_plate

      t.timestamps
    end
  end
end
