class CreateSectionCs < ActiveRecord::Migration
  def change
    create_table :section_cs do |t|
      t.integer :c_1
      t.integer :c_2
	  t.integer :c_3
      t.integer :c_4
	  t.integer :tw_1
      t.integer :tw_2
	  t.integer :tw_3
      t.integer :tw_4
	  t.integer :tw_5
      t.integer :tw_6
	  t.integer :ps_1
      t.integer :ps_2
	  t.integer :ps_3
      t.integer :ps_4
	  t.integer :ps_5
      t.integer :ps_6
	  t.integer :sm_1
      t.integer :sm_2
	  t.integer :sm_3
      t.integer :sm_4
	  t.integer :sm_5
	  t.integer :po_1
	  t.integer :po_2
	  t.integer :po_3
	  t.integer :po_4
	  t.integer :ts_1
	  t.integer :ts_2
	  t.integer :ts_3
	  t.integer :ts_4
	  t.integer :lc_1
	  t.integer :lc_2
	  t.integer :lc_3
	  t.integer :io_1
	  t.integer :io_2
	  t.integer :io_3
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
