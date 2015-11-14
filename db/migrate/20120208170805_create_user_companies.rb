class CreateUserCompanies < ActiveRecord::Migration
  def change
    create_table :user_companies do |t|
      t.integer :student_id
      t.integer :company_id
      t.integer :status_id
      t.integer :quantity, :default=>1
	  t.integer :user_id

      t.timestamps
    end
  end
end
