class CreateDateVisits < ActiveRecord::Migration
  def change
    create_table :date_visits do |t|
      t.integer :staff_id
      t.date :date
      t.integer :student_id
	  t.integer :user_id

      t.timestamps
    end
  end
end
