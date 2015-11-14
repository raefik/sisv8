class CreateCompProfiles < ActiveRecord::Migration
  def change
    create_table :comp_profiles do |t|
      t.string :bis_type
      t.string :official_no
      t.string :email
      t.string :url
      t.string :contact_person
      t.string :register_no
      t.integer :sector_id
      t.integer :industry_id
      t.integer :cluster_id
      t.text :place
      t.string :postcode
      t.string :city
      t.integer :state_id
      t.integer :user_id

      t.timestamps
    end
  end
end
