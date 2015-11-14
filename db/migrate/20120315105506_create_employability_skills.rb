class CreateEmployabilitySkills < ActiveRecord::Migration
  def change
    create_table :employability_skills do |t|
      t.text :expected_communication
      t.text :perception_communication
	  t.text :expected_teamwork
      t.text :perception_teamwork
	  t.text :expected_ps
      t.text :perception_ps
	  t.text :expected_sm
      t.text :perception_sm
	  t.text :expected_po
      t.text :perception_po
	  t.text :expected_ts
      t.text :perception_ts
	  t.text :expected_lc
      t.text :perception_lc
	  t.text :expected_io
      t.text :perception_io
      t.integer :user_id

      t.timestamps
    end
  end
end
