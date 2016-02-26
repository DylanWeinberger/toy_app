class AddDonIdColumnToToyModel < ActiveRecord::Migration
  def change
  	add_column :toys, :donator_id, :integer
  end
end
