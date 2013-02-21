class AddMatricNoIdToDateVisits < ActiveRecord::Migration
  def change
    add_column :date_visits, :matric_no_id, :integer
  end
end
