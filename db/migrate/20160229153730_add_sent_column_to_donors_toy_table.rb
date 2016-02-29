class AddSentColumnToDonorsToyTable < ActiveRecord::Migration
  def change
  	add_column :donors_toys, :sent, :boolean
  end
end
