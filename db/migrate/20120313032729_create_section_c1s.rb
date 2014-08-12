class CreateSectionC1s < ActiveRecord::Migration
  def change
    create_table :section_c1s do |t|
      t.integer :c_skill_id
      t.integer :agree_level_id
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
