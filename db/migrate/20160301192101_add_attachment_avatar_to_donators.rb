class AddAttachmentAvatarToDonators < ActiveRecord::Migration
  def self.up
    change_table :donators do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :donators, :avatar
  end
end
