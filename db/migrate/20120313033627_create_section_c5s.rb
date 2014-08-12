class CreateSectionC5s < ActiveRecord::Migration
  def change
    create_table :section_c5s do |t|
      t.integer :planning_id
      t.integer :agree_level_id
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
