class CreateStudProfiles < ActiveRecord::Migration
  def change
    create_table :stud_profiles do |t|
      t.string :matric_no
      t.string :nric
      t.integer :gender_id
      t.string :patient_history
      t.string :disease_description
      t.string :hp_no
      t.string :second_email
      t.integer :user_id
      t.integer :student_id
      t.timestamps
    end
  end
end
