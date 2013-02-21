class CreateStudLanguages < ActiveRecord::Migration
  def change
    create_table :stud_languages do |t|
      t.string :language
      t.integer :spoken
      t.integer :wriiten
      t.integer :user_id
      t.integer :student_id
      t.timestamps
    end
  end
end
