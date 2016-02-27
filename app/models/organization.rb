class Organization < ActiveRecord::Base
	has_secure_password
	has_many :seeks
	has_many :toys
end
