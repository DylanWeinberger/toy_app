class CreateOrgProfiles < ActiveRecord::Migration
  def change
    create_table :org_profiles do |t|
    		t.string :address
    		t.string :website
    		t.string :name
    		t.references :organization
      t.timestamps null: false
    end
  end
end
