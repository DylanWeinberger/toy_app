class CommentsOrgDonorToy < ActiveRecord::Base
	belongs_to :organization
	belongs_to :donator
	belongs_to :org_and_toy_connect
end
