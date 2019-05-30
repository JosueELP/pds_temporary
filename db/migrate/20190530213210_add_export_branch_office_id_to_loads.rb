class AddExportBranchOfficeIdToLoads < ActiveRecord::Migration[5.2]
  def change
    add_reference :loads, :export_branch_office, foreign_key: true
  end
end
