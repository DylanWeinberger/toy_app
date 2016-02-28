class AddActiveColumntoSeeksTable < ActiveRecord::Migration
  def change
  	add_column :seeks, :active, :boolean
  end
end
