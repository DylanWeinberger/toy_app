class Donator < ActiveRecord::Base
	has_secure_password

	has_many :donors_toys
	has_many :toys, through: :donors_toys

end
