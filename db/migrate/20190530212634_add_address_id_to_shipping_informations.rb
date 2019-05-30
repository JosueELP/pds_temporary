class AddAddressIdToShippingInformations < ActiveRecord::Migration[5.2]
  def change
    add_reference :shipping_informations, :address, foreign_key: true
  end
end
