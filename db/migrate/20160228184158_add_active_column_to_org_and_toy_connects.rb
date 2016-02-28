class AddActiveColumnToOrgAndToyConnects < ActiveRecord::Migration
  def change
  	add_column :org_and_toy_connects, :active, :boolean
  end
end
