class AddActiveColumnToDonAndSeekConnectTable < ActiveRecord::Migration
  def change
  	add_column :don_and_seek_connects, :active, :boolean
  end
end
