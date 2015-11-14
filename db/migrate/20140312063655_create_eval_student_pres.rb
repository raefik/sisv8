class CreateEvalStudentPres < ActiveRecord::Migration
  def change
    create_table :eval_student_pres do |t|

      t.timestamps
    end
  end
end
