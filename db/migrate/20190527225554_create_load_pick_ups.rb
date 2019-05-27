class CreateLoadPickUps < ActiveRecord::Migration[5.2]
  def change
    create_table :load_pick_ups do |t|

      t.timestamps
    end
  end
end
