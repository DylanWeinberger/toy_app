class AddActiveColumnToDonorsToyTable < ActiveRecord::Migration
  def change
  	add_column :donors_toys, :active, :boolean
  end
end
