class AddAdvIdToRequirements < ActiveRecord::Migration
  def change
    add_column :requirements, :adv_id, :integer
  end
end
