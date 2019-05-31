class AddDeliveryBranchOfficeIdToShippings < ActiveRecord::Migration[5.2]
  def change
    add_reference :shippings, :delivery_branch_office, foreign_key: true
  end
end
