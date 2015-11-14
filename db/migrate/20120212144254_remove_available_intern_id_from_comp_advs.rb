class RemoveAvailableInternIdFromCompAdvs < ActiveRecord::Migration
  def up
    remove_column :comp_advs, :available_intern_id
  end

  def down
    add_column :comp_advs, :available_intern_id, :integer
  end
end
