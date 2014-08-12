class CreateStudInternships < ActiveRecord::Migration
  def change
    create_table :stud_internships do |t|
      t.integer :duration_id
      t.integer :sem_internship_id
      t.integer :user_id
      t.integer :student_id
      t.timestamps
    end
  end
end
