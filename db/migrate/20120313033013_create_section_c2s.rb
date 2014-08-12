class CreateSectionC2s < ActiveRecord::Migration
  def change
    create_table :section_c2s do |t|
      t.integer :t_skill_id
      t.integer :agree_level_id
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
