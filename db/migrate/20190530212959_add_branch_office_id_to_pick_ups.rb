class AddBranchOfficeIdToPickUps < ActiveRecord::Migration[5.2]
  def change
    add_reference :pick_ups, :branch_office, foreign_key: true
  end
end
