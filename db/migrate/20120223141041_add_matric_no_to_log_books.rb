class AddMatricNoToLogBooks < ActiveRecord::Migration
  def change
    add_column :log_books, :matric_no, :string
  end
end
