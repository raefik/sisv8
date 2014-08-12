class CreateCommentars < ActiveRecord::Migration
  def change
    create_table :commentars do |t|

      t.timestamps
    end
  end
end
