class CreateBranchOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :branch_offices do |t|
      t.string :branch_office_name
      t.integer :branch_office_phone
      t.string :branch_office_email

      t.timestamps
    end
  end
end
