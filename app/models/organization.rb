class Organization < ActiveRecord::Base
	has_secure_password

	# Paperclip below
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
	
	# Geocode Below
	geocoded_by :address
	after_validation :geocode

	# relationships
	has_many :seeks
	has_many :toys, through: :seeks
	has_many :org_and_toy_connects
	has_many :donors_toys, through: :org_and_toy_connects
	has_many :comments_org_donor_toys
	has_many :don_and_seek_connects
	has_many :comments_don_and_seeks
	has_many :received_toys
	has_one :org_profile
end
