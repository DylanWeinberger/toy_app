class AddToyIdColumnToySeeksTableAndRemoveNameColumn < ActiveRecord::Migration
  def change
  	add_column :seeks, :toy_id, :integer
  	remove_column :seeks, :name, :string
  end
end
