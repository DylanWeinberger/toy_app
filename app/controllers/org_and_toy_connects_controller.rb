class OrgAndToyConnectsController < ApplicationController

	def new
		@organdtoy = OrgAndToyConnect.new
	end

	def create
		@organdtoy = OrgAndToyConnect.new(org_and_toy_params)
		@organdtoy.organization_id = current_org.id
		@organdtoy.donors_toy_id = params[:org_and_toy_connect][:donors_toy_id]
		# @organdtoy.donators_id
		if @organdtoy.save
			flash[:notice] = "your connection has been made"
			redirect_to @organdtoy
		else
			flash[:notice] = "there was a problem making your connection."
			redirect_to :back
		end
	end

	def show
		@organdtoy = OrgAndToyConnect.find(params[:id])
		@comment = CommentsOrgDonorToy.new
	end
	
	private 

	def org_and_toy_params
		params.require(:org_and_toy_connect).permit(:organization_id, :donors_toy_id, :donator_id)
	end		

end
