class DonAndSeekConnect < ActiveRecord::Base
	belongs_to :donator
	belongs_to :seek
	belongs_to :organization
	has_many :comments_don_and_seek
	has_many :received_toys
end
