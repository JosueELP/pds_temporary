class AddSenderClientIdToShippings < ActiveRecord::Migration[5.2]
  def change
    add_reference :shippings, :sender_client, foreign_key: true
  end
end
