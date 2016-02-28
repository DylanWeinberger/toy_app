class Seek < ActiveRecord::Base
	belongs_to :organization
	belongs_to :toy
	has_many :don_and_seeks_connections
	has_many :donators, through: :don_and_seeks_connections
end
