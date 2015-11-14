class CreateEvalStudentEnds < ActiveRecord::Migration
  def change
    create_table :eval_student_ends do |t|

      t.timestamps
    end
  end
end
