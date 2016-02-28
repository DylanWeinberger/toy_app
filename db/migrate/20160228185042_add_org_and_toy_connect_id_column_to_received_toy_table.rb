class AddOrgAndToyConnectIdColumnToReceivedToyTable < ActiveRecord::Migration
  def change
  	add_column :received_toys, :org_and_toy_connect_id, :integer
  end
end
