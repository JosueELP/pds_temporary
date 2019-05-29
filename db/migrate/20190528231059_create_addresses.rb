class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :colony
      t.string :interior_number
      t.integer :postal_code

      t.timestamps
    end
  end
end
