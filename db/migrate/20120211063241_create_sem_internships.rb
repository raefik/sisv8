class CreateSemInternships < ActiveRecord::Migration
  def change
    create_table :sem_internships do |t|
      t.string :name

      t.timestamps
    end
  end
end
