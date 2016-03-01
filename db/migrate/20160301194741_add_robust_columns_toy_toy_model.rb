class AddRobustColumnsToyToyModel < ActiveRecord::Migration
  def change
  	add_column :toys, :category, :string
  	add_column :toys, :age_range, :string
  	add_column :toys, :description, :string

  end
end
