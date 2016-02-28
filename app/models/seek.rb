class Seek < ActiveRecord::Base
	belongs_to :organization
	belongs_to :toy
	has_many :don_and_seek_connects, dependent: :destroy
	has_many :donators, through: :don_and_seek_connects
	has_many :received_toys
	
end
