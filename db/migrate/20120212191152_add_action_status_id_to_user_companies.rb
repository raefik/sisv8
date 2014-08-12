class AddActionStatusIdToUserCompanies < ActiveRecord::Migration
  def change
    add_column :user_companies, :action_status_id, :integer
  end
end
