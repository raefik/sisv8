class CreateStudEdus < ActiveRecord::Migration
  def change
    create_table :stud_edus do |t|
      t.integer :user_id
      t.string :cgpa
      t.string :current_sem
      t.integer :prog_name_id
      t.integer :prog_code_id
      t.integer :faculty_id

      t.timestamps
    end
  end
end
