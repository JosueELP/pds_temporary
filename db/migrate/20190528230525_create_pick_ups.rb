class CreatePickUps < ActiveRecord::Migration[5.2]
  def change
    create_table :pick_ups do |t|
      t.string :is_done
      t.date :schedule

      t.timestamps
    end
  end
end
