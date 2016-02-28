class ReceivedToy < ActiveRecord::Base
	belongs_to :organization
	belongs_to :donator
	belongs_to :donors_toy
	belongs_to :seek
	belongs_to :org_and_toy_connect
	belongs_to :don_and_seek_connect
end
