class CreateSectionC3s < ActiveRecord::Migration
  def change
    create_table :section_c3s do |t|
      t.integer :p_solving_id
      t.integer :agree_level_id
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
