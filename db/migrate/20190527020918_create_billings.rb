class CreateBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :billings do |t|
      t.string :rfc
      t.string :email

      t.timestamps
    end
  end
end
