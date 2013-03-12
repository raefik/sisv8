class AddProgNameIdToAvailableInternships < ActiveRecord::Migration
  def change
    add_column :available_internships, :prog_name_id, :integer
  end
end
