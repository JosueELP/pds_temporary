class AddAddressIdToBranchOffices < ActiveRecord::Migration[5.2]
  def change
    add_reference :branch_offices, :address, foreign_key: true
  end
end
