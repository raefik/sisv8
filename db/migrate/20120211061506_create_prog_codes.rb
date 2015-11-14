class CreateProgCodes < ActiveRecord::Migration
  def change
    create_table :prog_codes do |t|
      t.string :name

      t.timestamps
    end
  end
end
