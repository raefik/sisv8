class CreateLogBooks < ActiveRecord::Migration
  def change
    create_table :log_books do |t|
      t.date :date
      t.string :title
      t.text :content
      t.integer :action_id

      t.timestamps
    end
  end
end
