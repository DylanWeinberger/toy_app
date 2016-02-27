class DonAndSeekConnectsController < ApplicationController
	
	def new
		@donandseek = DonAndSeekConnect.new
	end

	def create
		@donandseek = DonAndSeekConnect.new(don_and_seek_params)
		@donandseek.donator_id = current_don.id
		@donandseek.seek_id = params[:don_and_seek_connect][:seek_id]
		if @donandseek.save
			flash[:notice] = "your connection has been made"
			redirect_to @donandseek
		else
			flash[:notice] = "there was a problem making your connection."
			redirect_to :back
		end
	end

	def show
		@donandseek = DonAndSeekConnect.find(params[:id])
		@comment = CommentsDonAndSeek.new
	end
	
	private 

	def don_and_seek_params
		params.require(:don_and_seek_connect).permit(:donator_id, :seek_id, :organization_id)
	end		
end
