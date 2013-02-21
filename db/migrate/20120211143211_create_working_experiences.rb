class CreateWorkingExperiences < ActiveRecord::Migration
  def change
    create_table :working_experiences do |t|
      t.string :company
      t.string :year_exp
      t.string :working_as
      t.integer :user_id

      t.timestamps
    end
  end
end
