class AddDonAndSeekIdColumnToReceivedToyTable < ActiveRecord::Migration
  def change
  	add_column :received_toys, :don_and_seek_connect_id, :integer
  end
end
