class AddImportBranchOfficeIdToLoads < ActiveRecord::Migration[5.2]
  def change
    add_reference :loads, :import_branch_office, foreign_key: true
  end
end
