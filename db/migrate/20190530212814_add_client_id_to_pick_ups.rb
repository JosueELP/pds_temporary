class AddClientIdToPickUps < ActiveRecord::Migration[5.2]
  def change
    add_reference :pick_ups, :client, foreign_key: true
  end
end
