class DonorsToysController < ApplicationController
	def index
		@donors_toys = DonorsToy.all
	end
	
	def new
		@donors_toy = DonorsToy.new	
	end

	def create
		@donors_toy = DonorsToy.new(donors_toy_params)
		@donors_toy.donator_id = current_don.id 
		@donors_toy.toy_id = params[:donors_toy][:toy_id]
		if @donors_toy.save
			flash[:notice] = "Your donors Toy has been added."
			redirect_to @current_don
		else
			flash[:notice] = "there was a problem making your donors toy"
			redirect_to :back
		end
	end

	def update
		
	end

	private

	def donors_toy_params
		params.require(:donors_toy).permit(:donator_id, :toy_id, :reason_for_donation, :active)
	end


end
