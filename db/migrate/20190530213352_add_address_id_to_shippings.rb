class AddAddressIdToShippings < ActiveRecord::Migration[5.2]
  def change
    add_reference :shippings, :address, foreign_key: true
  end
end
