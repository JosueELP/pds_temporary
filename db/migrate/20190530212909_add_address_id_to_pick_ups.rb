class AddAddressIdToPickUps < ActiveRecord::Migration[5.2]
  def change
    add_reference :pick_ups, :address, foreign_key: true
  end
end
