class AddUrlIdToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :url_id, :integer
  end
end
