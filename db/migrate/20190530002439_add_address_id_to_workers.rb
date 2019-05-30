class AddAddressIdToWorkers < ActiveRecord::Migration[5.2]
  def change
    add_reference :workers, :address, foreign_key: true, null: false, default: 1
    add_reference :workers, :branch_office, foreign_key: true, null: false, default: 1
    add_reference :workers, :city, foreign_key: true, null: false, default: 1
  end
end
