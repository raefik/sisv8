class CreateTSkills < ActiveRecord::Migration
  def change
    create_table :t_skills do |t|
      t.string :name

      t.timestamps
    end
  end
end
