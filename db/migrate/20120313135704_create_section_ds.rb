class CreateSectionDs < ActiveRecord::Migration
  def change
    create_table :section_ds do |t|
      t.integer :d_1
      t.integer :d_2
	  t.integer :d_3
      t.integer :d_4
	  t.integer :d_5
      t.integer :d_6
	  t.integer :d_7
      t.integer :d_8
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
