class AddUrlIdToWebs < ActiveRecord::Migration
  def change
    add_column :webs, :url_id, :integer
  end
end
