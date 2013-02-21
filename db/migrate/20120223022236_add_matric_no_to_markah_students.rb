class AddMatricNoToMarkahStudents < ActiveRecord::Migration
  def change
    add_column :markah_students, :matric_no, :string
  end
end
