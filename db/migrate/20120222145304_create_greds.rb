class CreateGreds < ActiveRecord::Migration
  def change
    create_table :greds do |t|
      t.string :name

      t.timestamps
    end
  end
end
