class CreateShippingInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_informations do |t|
      t.integer :phone
      t.string :additional_info

      t.timestamps
    end
  end
end
