class CreateStaffTypes < ActiveRecord::Migration
  def change
    create_table :staff_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
