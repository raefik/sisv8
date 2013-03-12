class CreateInnovativeOutcomes < ActiveRecord::Migration
  def change
    create_table :innovative_outcomes do |t|
      t.string :name

      t.timestamps
    end
  end
end
