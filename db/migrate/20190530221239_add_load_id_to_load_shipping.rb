class AddLoadIdToLoadShipping < ActiveRecord::Migration[5.2]
  def change
    add_reference :load_shippings, :load, foreign_key: true
  end
end
