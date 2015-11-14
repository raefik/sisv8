class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.integer :role_id
      t.integer :admin
      t.string :status

      t.timestamps
    end
  end
end
