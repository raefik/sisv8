class Addfacultylecturer < ActiveRecord::Migration
  def change

  	add_column :faculties,:lecturer_list_code , :string

  end


end
