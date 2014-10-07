class FixColumnNameWeb < ActiveRecord::Migration
  def change
    rename_column :webs, :url, :link
  end
end
