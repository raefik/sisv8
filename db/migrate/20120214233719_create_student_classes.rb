class CreateStudentClasses < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.integer :prog_name_id
      t.integer :prog_code_id
      t.string :class_name
      t.string :total_student
	  t.integer :kpi_id
	  t.integer :staff_id
	  t.integer :user_id

      t.timestamps
    end
  end
end
