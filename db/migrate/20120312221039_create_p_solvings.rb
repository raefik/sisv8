class CreatePSolvings < ActiveRecord::Migration
  def change
    create_table :p_solvings do |t|
      t.string :name

      t.timestamps
    end
  end
end
