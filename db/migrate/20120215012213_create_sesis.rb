class CreateSesis < ActiveRecord::Migration
  def change
    create_table :sesis do |t|
      t.string :name

      t.timestamps
    end
  end
end
