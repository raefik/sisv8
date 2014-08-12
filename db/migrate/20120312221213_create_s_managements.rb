class CreateSManagements < ActiveRecord::Migration
  def change
    create_table :s_managements do |t|
      t.string :name

      t.timestamps
    end
  end
end
