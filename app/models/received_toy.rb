class ReceivedToy < ActiveRecord::Base
	belongs_to :organization
	belongs_to :donator
	belongs_to :donors_toy
	belongs_to :seek
end
