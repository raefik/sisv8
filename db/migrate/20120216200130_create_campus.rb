class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :name
      t.string :cawangan
      t.integer :state_id

      t.timestamps
    end
  end
end
