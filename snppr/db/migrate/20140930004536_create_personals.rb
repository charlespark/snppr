class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :title
      t.string :alt_text

      t.timestamps
    end
  end
end
