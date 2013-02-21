class AddStudProfileDetailToStudProfiles < ActiveRecord::Migration
  def change
    add_column :stud_profiles, :age, :string
    add_column :stud_profiles, :marital_status_id, :integer
    add_column :stud_profiles, :dob, :date
  end
end
