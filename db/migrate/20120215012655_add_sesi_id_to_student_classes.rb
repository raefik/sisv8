class AddSesiIdToStudentClasses < ActiveRecord::Migration
  def change
    add_column :student_classes, :sesi_id, :integer
    add_column :student_classes, :tahun, :string
  end
end
