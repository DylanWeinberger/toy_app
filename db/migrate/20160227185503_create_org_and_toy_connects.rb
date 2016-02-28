class CreateOrgAndToyConnects < ActiveRecord::Migration
  def change
    create_table :org_and_toy_connects do |t|
    	t.integer :organization_id
    	t.integer :donors_toy_id
      t.timestamps null: false
    end
  end
end
