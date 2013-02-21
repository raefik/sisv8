class AddLogdetailToStudProfiles < ActiveRecord::Migration
  def change
    add_column :stud_profiles, :buku_log, :integer
    add_column :stud_profiles, :penyelia, :integer
    add_column :stud_profiles, :laporan, :integer
    add_column :stud_profiles, :jumlah, :integer
    add_column :stud_profiles, :gred_id, :integer
    add_column :stud_profiles, :catatan, :string
  end
end
