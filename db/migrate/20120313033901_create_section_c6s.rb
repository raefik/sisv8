class CreateSectionC6s < ActiveRecord::Migration
  def change
    create_table :section_c6s do |t|
      t.integer :technology_skill_id
      t.integer :agree_level_id
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
