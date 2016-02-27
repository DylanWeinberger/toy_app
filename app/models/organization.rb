class Organization < ActiveRecord::Base
	has_secure_password
	has_many :seeks
	has_many :toys, through: :seeks
	has_many :org_and_toy_connects
	has_many :donors_toys, through: :org_and_toy_connects
end
