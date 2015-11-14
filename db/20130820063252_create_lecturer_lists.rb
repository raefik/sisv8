class CreateLecturerLists < ActiveRecord::Migration
  def change
    create_table :lecturer_lists do |t|
      t.string :staffno
      t.string :fullname
      t.string :faculty
      t.string :subjectcode
      t.string :subjectname
      t.string :group
      t.string :campuscode
      t.string :contactno
      t.string :handphoneno
      t.string :email

      t.timestamps
    end
  end
end
