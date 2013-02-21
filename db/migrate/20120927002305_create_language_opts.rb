class CreateLanguageOpts < ActiveRecord::Migration
  def change
    create_table :language_opts do |t|
      t.string :languade

      t.timestamps
    end
  end
end
