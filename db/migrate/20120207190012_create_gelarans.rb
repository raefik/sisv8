class CreateGelarans < ActiveRecord::Migration
  def change
    create_table :gelarans do |t|
      t.string :name

      t.timestamps
    end
  end
end
