class CreateCodePrograms < ActiveRecord::Migration
  def change
    create_table :code_programs do |t|
      t.string :name

      t.timestamps
    end
  end
end
