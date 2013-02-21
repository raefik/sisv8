class AddUserIdToRequirements < ActiveRecord::Migration
  def change
    add_column :requirements, :user_id, :integer
  end
end
