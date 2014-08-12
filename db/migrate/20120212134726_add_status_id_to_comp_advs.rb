class AddStatusIdToCompAdvs < ActiveRecord::Migration
  def change
    add_column :comp_advs, :status_id, :integer
  end
end
