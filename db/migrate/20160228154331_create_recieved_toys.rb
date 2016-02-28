class CreateRecievedToys < ActiveRecord::Migration
  def change
    create_table :recieved_toys do |t|
    	t.integer :donors_toy_id
    	t.integer :organization_id
    	t.integer :donator_id
    	t.integer :seek_id
      t.timestamps null: false
    end
  end
end
