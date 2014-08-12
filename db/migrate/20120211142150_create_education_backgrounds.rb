class CreateEducationBackgrounds < ActiveRecord::Migration
  def change
    create_table :education_backgrounds do |t|
      t.string :institute
      t.string :year
      t.integer :user_id

      t.timestamps
    end
  end
end
