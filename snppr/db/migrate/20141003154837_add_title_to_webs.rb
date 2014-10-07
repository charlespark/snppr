class AddTitleToWebs < ActiveRecord::Migration
  def change
    add_column :webs, :title, :string
  end
end
