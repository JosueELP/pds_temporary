class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.integer :quantity
      t.string :description

      t.timestamps
    end
  end
end
