class RenameWebsUrlColumn < ActiveRecord::Migration
  def up
    add_column :images, :link, :string
  end

  def down
    add_column :images, :url
  end
end
