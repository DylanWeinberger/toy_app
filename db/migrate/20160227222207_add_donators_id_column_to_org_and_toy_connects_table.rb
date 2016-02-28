class AddDonatorsIdColumnToOrgAndToyConnectsTable < ActiveRecord::Migration
  def change
  	add_column :org_and_toy_connects, :donators_id, :integer
  end
end
