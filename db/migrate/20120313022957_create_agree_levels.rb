class CreateAgreeLevels < ActiveRecord::Migration
  def change
    create_table :agree_levels do |t|
      t.string :name

      t.timestamps
    end
  end
end
