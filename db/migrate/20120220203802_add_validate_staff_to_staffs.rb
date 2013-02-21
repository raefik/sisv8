class AddValidateStaffToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :validate_staff, :boolean
  end
end
