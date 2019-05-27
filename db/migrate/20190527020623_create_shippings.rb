class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.date :expedition_date
      t.date :delivery_date
      t.string :type
      t.string :authorization_sign
      t.string :delivery_sign
      t.integer :package_number
      t.float :delivery_cost
      t.float :insurance_cost
      t.float :taxes
      t.float :final_cost

      t.timestamps
    end
  end
end
