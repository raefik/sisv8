class Removefaculti < ActiveRecord::Migration
  def change

  	remove_column :faculties, :kampu_id


  end


end
