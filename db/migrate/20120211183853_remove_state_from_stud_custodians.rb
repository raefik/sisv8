class RemoveStateFromStudCustodians < ActiveRecord::Migration
  def up
    remove_column :stud_custodians, :state
  end

  def down
    add_column :stud_custodians, :state, :integer
  end
end
