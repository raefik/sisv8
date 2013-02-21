class CreateAvailableInternships < ActiveRecord::Migration
  def change
    create_table :available_internships do |t|
      t.string :name

      t.timestamps
    end
  end
end
