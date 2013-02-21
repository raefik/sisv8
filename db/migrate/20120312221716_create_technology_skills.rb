class CreateTechnologySkills < ActiveRecord::Migration
  def change
    create_table :technology_skills do |t|
      t.string :name

      t.timestamps
    end
  end
end
