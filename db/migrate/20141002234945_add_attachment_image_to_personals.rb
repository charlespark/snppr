class AddAttachmentImageToPersonals < ActiveRecord::Migration
  def self.up
    change_table :personals do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :personals, :image
  end
end
