class AddAdvIdToAvailableInternships < ActiveRecord::Migration
  def change
    add_column :available_internships, :adv_id, :integer
    add_column :available_internships, :user_id, :integer
  end
end
