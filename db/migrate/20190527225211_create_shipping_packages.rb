class CreateShippingPackages < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_packages do |t|

      t.timestamps
    end
  end
end
