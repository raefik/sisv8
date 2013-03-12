class CreateCompAdvs < ActiveRecord::Migration
  def change
    create_table :comp_advs do |t|
      t.date :adv_date
      t.date :exp_date
      t.text :about_company
      t.integer :requirement_id
      t.integer :level
      t.integer :allowance_id
      t.string :value_allowance
      t.integer:benefit
      t.integer :available_intern_id
      t.integer :user_id

      t.timestamps
    end
  end
end
