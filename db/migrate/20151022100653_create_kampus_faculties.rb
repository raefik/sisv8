class CreateKampusFaculties < ActiveRecord::Migration
  def change
    create_table :kampus_faculties do |t|

  		t.integer :campus_id
  		t.integer :faculti_id

      t.timestamps
    end
  end
end
