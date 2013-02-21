class CreatePAttributes < ActiveRecord::Migration
  def change
    create_table :p_attributes do |t|
      t.string :name

      t.timestamps
    end
  end
end
