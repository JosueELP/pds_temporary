class AddWorkerIdToShippings < ActiveRecord::Migration[5.2]
  def change
    add_reference :shippings, :worker, foreign_key: true
  end
end
