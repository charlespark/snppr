class RenameImageUrlColumn < ActiveRecord::Migration
  def up
    add_column :images, :link, :string
  end
  
  def down
    remove_column :images, :url
  end
end
