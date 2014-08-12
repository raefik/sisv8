class CreateStudentData < ActiveRecord::Migration
  def change
    create_table :student_data do |t|
      t.integer :student_id
      t.integer :mykadno
      t.string :fullname
      t.integer :gender_id
      t.string :groupcode
      t.string :programcode
      t.string :facultycode
      t.string :campuscode
      t.string :contactno
      t.string :handphoneno
      t.integer :religion_id
      t.string :add1
      t.string :add2
      t.integer :postcode
      t.integer :city
      t.integer :state_id
      t.string :email
      t.string :cgpa

      t.timestamps
    end
  end
end
