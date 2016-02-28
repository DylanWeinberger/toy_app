class AddOrgIdToDonAndSeekTable < ActiveRecord::Migration
  def change
  	add_column :don_and_seek_connects, :organization_id, :integer
  end
end
