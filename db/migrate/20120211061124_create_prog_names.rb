class CreateProgNames < ActiveRecord::Migration
  def change
    create_table :prog_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
