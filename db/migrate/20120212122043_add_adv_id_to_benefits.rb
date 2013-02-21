class AddAdvIdToBenefits < ActiveRecord::Migration
  def change
    add_column :benefits, :adv_id, :integer
  end
end
