class CreateWebs < ActiveRecord::Migration
  def change
    create_table :webs do |t|

      t.timestamps
    end
  end
end
