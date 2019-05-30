class AddCarrierWorkerIdToLoads < ActiveRecord::Migration[5.2]
  def change
    add_reference :loads, :worker, foreign_key: true
  end
end
