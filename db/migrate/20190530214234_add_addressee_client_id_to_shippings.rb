class AddAddresseeClientIdToShippings < ActiveRecord::Migration[5.2]
  def change
    add_reference :shippings, :adressee_client, foreign_key: true
  end
end
