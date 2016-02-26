class ChangePasswordToPasswordDigestInDonatorTable < ActiveRecord::Migration
  def change
  	rename_column :donators, :password, :password_digest
  end
end
