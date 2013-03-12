class CreateStudReferences < ActiveRecord::Migration
  def change
    create_table :stud_references do |t|
      t.integer :user_id
      t.string :name
      t.string :occupation
      t.string :company
      t.string :contact_no
      t.string :email
      t.string :relationship
      t.integer :student_id
      t.timestamps
    end
  end
end
