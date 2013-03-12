class AddTotalToUserCompanies < ActiveRecord::Migration
  def change
    add_column :user_companies, :total, :integer
  end
end
