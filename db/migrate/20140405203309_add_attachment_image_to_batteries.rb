class AddAttachmentImageToBatteries < ActiveRecord::Migration
  def self.up
    change_table :batteries do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :batteries, :image
  end
end
