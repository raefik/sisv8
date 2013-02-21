class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staff_no
      t.integer :staff_type_id
      t.integer :gelaran_id
      t.integer :program_id
      t.integer :faculty_id
      t.string :room_no
      t.text :place
      t.string :office_no
      t.string :hp_no
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
