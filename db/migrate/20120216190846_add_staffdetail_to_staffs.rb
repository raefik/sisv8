class AddStaffdetailToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :prog_code_id, :integer
    add_column :staffs, :prog_name_id, :integer
    add_column :staffs, :kampu_id, :integer
  end
end
