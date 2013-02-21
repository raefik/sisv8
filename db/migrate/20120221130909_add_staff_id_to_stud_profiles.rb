class AddStaffIdToStudProfiles < ActiveRecord::Migration
  def change
    add_column :stud_profiles, :staff_id, :integer
  end
end
