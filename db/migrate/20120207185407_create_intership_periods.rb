class CreateIntershipPeriods < ActiveRecord::Migration
  def change
    create_table :intership_periods do |t|
      t.string :name

      t.timestamps
    end
  end
end
