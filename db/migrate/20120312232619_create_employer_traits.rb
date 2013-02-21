class CreateEmployerTraits < ActiveRecord::Migration
  def change
    create_table :employer_traits do |t|
      t.string :name

      t.timestamps
    end
  end
end
