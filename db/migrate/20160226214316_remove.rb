class Remove < ActiveRecord::Migration
  def change

  	remove_column :toys, :organization_id, :integer

  end
end
