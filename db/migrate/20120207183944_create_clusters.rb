class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :nams

      t.timestamps
    end
  end
end
