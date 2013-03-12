class AddRecordToEvalByAkademicSvs < ActiveRecord::Migration
  def change
    add_column :eval_by_akademic_svs, :r3, :string
    add_column :eval_by_akademic_svs, :r4, :string
  end
end
