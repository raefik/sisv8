class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :name

      t.timestamps
    end
  end
end
