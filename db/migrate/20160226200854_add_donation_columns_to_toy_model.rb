class AddDonationColumnsToToyModel < ActiveRecord::Migration
  def change
  	add_column :toys, :organization_id, :integer
  	add_column :toys, :donated?, :boolean
  end
end
