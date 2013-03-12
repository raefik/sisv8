class CreateStudCustodians < ActiveRecord::Migration
  def change
    create_table :stud_custodians do |t|
      t.string :name
      t.text :place
      t.string :postcode
      t.integer :state
      t.string :city
      t.string :email
      t.string :hp_no
      t.string :relationship
      t.integer :user_id
      t.integer :student_id
      t.timestamps
    end
  end
end
