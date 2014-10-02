class CreateWebs < ActiveRecord::Migration
  def change
    create_table :webs do |t|
      t.string :meta_data
      t.string :url

      t.timestamps
    end
  end
end
