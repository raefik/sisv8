class KampuFaculties < ActiveRecord::Migration
  def change

  	create_table :KampuFaculties do |t|

  		t.integer :campus_id
  		t.integer :faculti_id

  		t.timestamps
  	end
  end
end
