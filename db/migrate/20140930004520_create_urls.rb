class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :title
      t.string :slug

      t.timestamps
    end
  end
end
