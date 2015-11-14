class RenameColumnkampufaculti < ActiveRecord::Migration
  def change

	rename_column :KampuFaculties, :campus_id, :kampu_id

  end
end
