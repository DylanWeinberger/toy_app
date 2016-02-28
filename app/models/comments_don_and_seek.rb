class CommentsDonAndSeek < ActiveRecord::Base

	belongs_to :organization
	belongs_to :donator
	belongs_to :don_and_seek_connect
	
end
