class CreateDonAndSeekConnects < ActiveRecord::Migration
  def change
    create_table :don_and_seek_connects do |t|
    	t.integer :donator_id
    	t.integer :seek_id
      t.timestamps null: false
    end
  end
end
