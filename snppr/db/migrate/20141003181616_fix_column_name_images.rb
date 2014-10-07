class FixColumnNameImages < ActiveRecord::Migration
  def change
    rename_column :images, :url, :link
  end
end
