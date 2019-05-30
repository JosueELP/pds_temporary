class AddBranchOfficeIdToStatuses < ActiveRecord::Migration[5.2]
  def change
    add_reference :statuses, :branch_office, foreign_key: true
  end
end
