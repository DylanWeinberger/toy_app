class DropReasonColumnFromDonorsToysTable < ActiveRecord::Migration
  def change

  	remove_column :donors_toys, :reason, :string

  end
end
