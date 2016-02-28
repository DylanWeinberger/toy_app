class ReceivedToysController < ApplicationController
	def new
	end

	def create
		@received = ReceivedToy.new(received_params)
		@org = current_org
		if @received.save
			# if @received.seek_id != nil
			# 	@seek = Seek.find(params[:recieved_toy][:seek_id])
			# 	@seek.destroy
				flash[:notice] = "your toy has been added to your received toy list."
				redirect_to @org
			if @received.donors_toy_id != nil
				@donors_toy = DonorsToy.find(params[:received_toy][:donors_toy_id])
				@donors_toy.update_attributes(:active => false)
				@organdtoy = OrgAndToyConnect.find(params[:received_toy][:org_and_toy_connect_id])
				@organdtoy.update_attributes(:active => false)
				
			end		
		else
			flash[:notice] = "there was a problem with your request."
			redirect_to :back
		end
	end	
	
	private
	
	def received_params
		params.require(:received_toy).permit(:organization_id, :donors_toy_id, :donator_id, :seek_id, :org_and_toy_connect_id)
	end

end
