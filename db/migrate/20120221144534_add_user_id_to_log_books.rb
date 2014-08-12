class AddUserIdToLogBooks < ActiveRecord::Migration
  def change
    add_column :log_books, :user_id, :integer
    add_column :log_books, :company_id, :integer
  end
end
