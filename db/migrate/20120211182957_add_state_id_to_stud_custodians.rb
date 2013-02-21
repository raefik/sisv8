class AddStateIdToStudCustodians < ActiveRecord::Migration
  def change
    add_column :stud_custodians, :state_id, :integer
  end
end
