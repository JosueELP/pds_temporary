class AddVehicleIdToLoads < ActiveRecord::Migration[5.2]
  def change
    add_reference :loads, :vehicle, foreign_key: true
  end
end
