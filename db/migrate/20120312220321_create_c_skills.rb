class CreateCSkills < ActiveRecord::Migration
  def change
    create_table :c_skills do |t|
      t.string :name

      t.timestamps
    end
  end
end
