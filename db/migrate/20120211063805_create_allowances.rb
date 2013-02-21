class CreateAllowances < ActiveRecord::Migration
  def change
    create_table :allowances do |t|
      t.string :name

      t.timestamps
    end
  end
end
