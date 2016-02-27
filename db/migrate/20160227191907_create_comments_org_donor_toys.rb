class CreateCommentsOrgDonorToys < ActiveRecord::Migration
  def change
    create_table :comments_org_donor_toys do |t|
    	t.integer :donator_id
    	t.integer :organization_id
    	t.integer :org_and_toy_connect_id
    	t.string :body
      t.timestamps null: false
    end
  end
end
