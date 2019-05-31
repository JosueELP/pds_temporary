class AddPaymenthMethodIdToShippings < ActiveRecord::Migration[5.2]
  def change
    add_reference :shippings, :payment_method, foreign_key: true
  end
end
