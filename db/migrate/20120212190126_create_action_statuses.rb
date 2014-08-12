class CreateActionStatuses < ActiveRecord::Migration
  def change
    create_table :action_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
