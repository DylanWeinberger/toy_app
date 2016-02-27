class DonorsToy < ActiveRecord::Base
	belongs_to :donator
	belongs_to :toy
end
