class CreateSectionC4s < ActiveRecord::Migration
  def change
    create_table :section_c4s do |t|
      t.integer :s_management_id
      t.integer :agree_level_id
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
