class AddTitleToEmployerTraits < ActiveRecord::Migration
  def change
    add_column :employer_traits, :title, :string
  end
end
