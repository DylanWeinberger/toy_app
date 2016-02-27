class RemoveDonatedBooleanColumnFromToyTable < ActiveRecord::Migration
  def change

  	remove_column :toys, :donated?, :boolean

  end
end
