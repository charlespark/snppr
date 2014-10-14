class AddCategoryIdToUsers < ActiveRecord::Migration
  def change
    add_column :urls, :category_id, :integer
  end
end
