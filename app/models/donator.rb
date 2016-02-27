class Donator < ActiveRecord::Base
	has_secure_password

	has_many :donors_toys
	has_many :toys, through: :donors_toys
	has_many :don_and_seeks_connections
	has_many :seeks, through: :don_and_seeks_connections
	has_many :comments_org_donor_toys

end
