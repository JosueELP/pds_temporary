class CreateBillingInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :billing_informations do |t|
      t.string :rfc
      t.string :email

      t.timestamps
    end
  end
end
