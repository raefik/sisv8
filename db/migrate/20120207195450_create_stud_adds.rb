class CreateStudAdds < ActiveRecord::Migration
  def change
    create_table :stud_adds do |t|
      t.integer :user_id
      t.text :place
      t.string :postcode
      t.string :city
      t.integer :state_id
	  t.integer :student_id
      t.timestamps
    end
  end
end
