class CreateKampus < ActiveRecord::Migration
  def change
    create_table :kampus do |t|
      t.string :name
      t.string :cawangan
      t.integer :state_id

      t.timestamps
    end
  end
end
