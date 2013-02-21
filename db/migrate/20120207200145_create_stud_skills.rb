class CreateStudSkills < ActiveRecord::Migration
  def change
    create_table :stud_skills do |t|
      t.string :skill
      t.string :year_exp
      t.string :proficiency
      t.integer :user_id
	  t.integer :student_id
      t.timestamps
    end
  end
end
