class Donator < ActiveRecord::Base
	has_secure_password

	has_many :toys

end