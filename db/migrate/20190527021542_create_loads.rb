class CreateLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :loads do |t|
      t.date :load_date

      t.timestamps
    end
  end
end
