class OrgProfilesController < ApplicationController
	def new
		@orgprofile = OrgProfile.new
	end
	
	def create
		@orgprofile = OrgProfile.new(profile_params)
		if @orgprofile.save
			flash[:notice] = "your profile has been saved."
			redirect_to root_path
		else
			flash[:notice] = "There was a problem creating your profile."
			redirect_to :back
		end
	end

	def edit
	end

	def update

	end

	def show
		@orgprofile = OrgProfile.find(params[:id])
	end
	
	private
	
	def profile_params
		params.require(:org_profile).permit(:name, :organization_id, :website, :address)
	end	
			
end
