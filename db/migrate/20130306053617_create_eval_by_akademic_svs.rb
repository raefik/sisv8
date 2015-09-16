class CreateEvalByAkademicSvs < ActiveRecord::Migration
  def change
    create_table :eval_by_akademic_svs do |t|
      t.string :stud_name
      t.string :stud_id
      t.string :sv_name
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :a5
      t.string :a6
      t.string :a7
      t.string :a8
      t.string :a9
      t.string :l1
      t.string :a11
      t.string :l2
      t.string :r1
      t.string :r2

      t.timestamps
    end
  end
end
