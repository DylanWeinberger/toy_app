class RenameSeekIdToDonAndSeekIdInCommentsDonAndSeekTable < ActiveRecord::Migration
  def change
  	rename_column :comments_don_and_seeks, :seek_id, :don_and_seek_connect_id
  end
end
