class CreateDonorsToys < ActiveRecord::Migration
  def change
    create_table :donors_toys do |t|
    	t.references :toy
    	t.references :donator
    	t.string :reason_for_donation
      t.timestamps null: false
    end
  end
end
