class AddRoleIdToWorkers < ActiveRecord::Migration[5.2]
  def change
    add_reference :workers, :role, foreign_key: true, null: false, default: 1
  end
end
