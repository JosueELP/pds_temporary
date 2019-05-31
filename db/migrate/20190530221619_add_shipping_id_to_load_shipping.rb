class AddShippingIdToLoadShipping < ActiveRecord::Migration[5.2]
  def change
    add_reference :load_shippings, :shipping, foreign_key: true
  end
end
