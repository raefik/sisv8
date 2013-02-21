class CreateMarkahStudents < ActiveRecord::Migration
  def change
    create_table :markah_students do |t|
      t.integer :user_id
      t.integer :staff_id
      t.integer :buku_log
      t.integer :penyelia
      t.integer :laporan
      t.integer :jumlah
      t.string :gred
      t.string :catatan

      t.timestamps
    end
  end
end
