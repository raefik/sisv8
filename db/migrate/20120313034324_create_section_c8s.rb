class CreateSectionC8s < ActiveRecord::Migration
  def change
    create_table :section_c8s do |t|
      t.integer :innovative_outcome_id
      t.integer :agree_level_id
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
