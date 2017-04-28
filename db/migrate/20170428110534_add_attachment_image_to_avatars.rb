class AddAttachmentImageToAvatars < ActiveRecord::Migration
  def self.up
    change_table :avatars do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :avatars, :image
  end
end
