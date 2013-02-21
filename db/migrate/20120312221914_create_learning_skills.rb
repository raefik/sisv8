class CreateLearningSkills < ActiveRecord::Migration
  def change
    create_table :learning_skills do |t|
      t.string :name

      t.timestamps
    end
  end
end
