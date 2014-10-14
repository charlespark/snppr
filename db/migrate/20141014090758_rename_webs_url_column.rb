class RenameWebsUrlColumn < ActiveRecord::Migration
  def up
    add_column :webs, :link, :string
  end

  def down
    add_column :webs, :url
  end
end
