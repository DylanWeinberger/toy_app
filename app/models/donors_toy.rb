class DonorsToy < ActiveRecord::Base
	
	belongs_to :donator
	belongs_to :toy
	has_many :organizations, through: :org_and_toy_connects
	has_many :org_and_toy_connects, dependent: :destroy
	has_many :received_toys

	# scope :multiple_donated_toys -> { |x,y| DonorsToy.where}
end
