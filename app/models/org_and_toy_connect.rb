class OrgAndToyConnect < ActiveRecord::Base
	belongs_to :organization
	belongs_to :donors_toy
end
