class RemoveSeekColumnFromReceivedToyTable < ActiveRecord::Migration
  def change
  	remove_column :received_toys, :seek_id, :integer
  end
end
