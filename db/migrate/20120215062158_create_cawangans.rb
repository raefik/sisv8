class CreateCawangans < ActiveRecord::Migration
  def change
    create_table :cawangans do |t|
      t.string :name
      t.integer :state_id

      t.timestamps
    end
  end
end
