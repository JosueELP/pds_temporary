class AddShippingIdToPackages < ActiveRecord::Migration[5.2]
  def change
    add_reference :packages, :shipping, foreign_key: true
  end
end
