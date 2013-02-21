class AddStudEduDetailToStudEdus < ActiveRecord::Migration
  def change
    add_column :stud_edus, :student_class_id, :integer
    add_column :stud_edus, :kampu_id, :integer
  end
end
