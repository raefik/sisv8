class CreateEvalIndustrySvs < ActiveRecord::Migration
  def change
    create_table :eval_industry_svs do |t|
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
      t.string :a10
      t.string :a11
      t.string :a12
      t.string :a13
      t.string :a14
      t.string :a15
      t.string :a16
	  t.string :a17
      t.string :a18

      t.timestamps
    end
  end
end
