class RenameRecievedToysToCorrrectSpelling < ActiveRecord::Migration
  def change
  	rename_table :recieved_toys, :received_toys
  end
end
