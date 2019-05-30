class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :client_lastname

      t.timestamps
    end
  end
end
