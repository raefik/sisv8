class CreateSectionBs < ActiveRecord::Migration
  def change
    create_table :section_bs do |t|
      t.integer :pa_1
      t.integer :pa_2
	  t.integer :pa_3
      t.integer :pa_4
	  t.integer :pa_5
      t.integer :pa_6
	  t.integer :pa_7
      t.integer :pa_8
	  t.integer :pa_9
      t.integer :pa_10
	  t.integer :pa_11
      t.integer :pa_12
	  t.integer :pa_13
      t.integer :pa_14
	  t.integer :pa_15
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
