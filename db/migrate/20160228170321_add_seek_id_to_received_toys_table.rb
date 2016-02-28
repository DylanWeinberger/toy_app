class AddSeekIdToReceivedToysTable < ActiveRecord::Migration
  def change
  	add_column :received_toys, :seek_id, :integer
  end
end
