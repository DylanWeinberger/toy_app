class ReceivedToysController < ApplicationController
	def new
	end

	def create
		@received = ReceivedToy.new(received_params)
		@org = current_org
		if @received.save
			puts "****************"
			puts params
			flash[:notice] = "your toy has been added to your received toy list."
			redirect_to @org
		else
			puts "****************"
			puts params
			flash[:notice] = "there was a problem with your request."
			redirect_to :back
		end
	end
	
	private
	
	def received_params
		params.require(:received_toy).permit(:organization_id, :donors_toy_id, :donator_id, :seek_id)
	end

end
