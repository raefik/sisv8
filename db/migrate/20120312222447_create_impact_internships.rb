class CreateImpactInternships < ActiveRecord::Migration
  def change
    create_table :impact_internships do |t|
      t.string :name

      t.timestamps
    end
  end
end
