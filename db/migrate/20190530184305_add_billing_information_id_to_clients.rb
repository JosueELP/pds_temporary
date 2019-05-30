class AddBillingInformationIdToClients < ActiveRecord::Migration[5.2]
  def change
    add_reference :clients, :billing_information, foreign_key: true
    add_reference :clients, :shipping_information, foreign_key: true
    add_reference :clients, :address, foreign_key: true
  end
end
