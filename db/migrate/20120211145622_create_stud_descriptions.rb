class CreateStudDescriptions < ActiveRecord::Migration
  def change
    create_table :stud_descriptions do |t|
      t.text :about_me
      t.integer :user_id

      t.timestamps
    end
  end
end
