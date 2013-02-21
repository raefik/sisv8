class CreateESkills < ActiveRecord::Migration
  def change
    create_table :e_skills do |t|
      t.string :name

      t.timestamps
    end
  end
end
