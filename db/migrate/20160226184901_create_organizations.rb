class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
    	t.string :username
    	t.string :email
    	t.string :password_digest
    	t.string :address
      t.timestamps null: false
    end
  end
end
