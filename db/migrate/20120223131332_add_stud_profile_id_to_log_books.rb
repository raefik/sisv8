class AddStudProfileIdToLogBooks < ActiveRecord::Migration
  def change
    add_column :log_books, :stud_profile_id, :integer
  end
end
