class EditDonatorIdColumnInOrgAndToyConnectTable < ActiveRecord::Migration
  def change
  	rename_column :org_and_toy_connects, :donators_id, :donator_id
  end
end
