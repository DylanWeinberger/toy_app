class OrgAndToyConnect < ActiveRecord::Base
	belongs_to :organization
	belongs_to :donator
	belongs_to :donors_toy
	has_many :comments_org_donor_toys
	has_many :received_toys

end
