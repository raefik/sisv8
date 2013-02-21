class CreateBenefits < ActiveRecord::Migration
  def change
    create_table :benefits do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
