class AddDetailsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :staff_id, :integer
    add_column :students, :kpi_id, :integer
  end
end
