class CreateLoadShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :load_shippings do |t|

      t.timestamps
    end
  end
end
