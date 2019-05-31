class AddStatusIdToShippings < ActiveRecord::Migration[5.2]
  def change
    add_reference :shippings, :status, foreign_key: true
  end
end
