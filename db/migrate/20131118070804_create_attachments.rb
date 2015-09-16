class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :id
      t.string :filename
      t.integer :student_id

      t.timestamps
    end
  end
end
