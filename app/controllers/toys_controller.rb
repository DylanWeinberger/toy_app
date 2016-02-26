class ToysController < ApplicationController
	def index
		@toys = Toy.all
	end

	def new
		@toy = Toy.new
	end

	def create
		@toy = Toy.new(toy_params)
		if @toy.save
			flash[:notice] = "Your Toy Was Created"
			redirect_to @toy
		else
			flash[:notice] = "there was a problem creating your toy."
			redirect_to :back
		end
	end

	def show
		@toy = Toy.find(params[:id])
	end

	def destroy
		@toy = Toy.find(params[:id])
		@toy.destroy
		flash[:notice] = "Your toy has been deleted."
		redirect_to root_path
	end

	private
	def toy_params
  		params.require(:toy).permit(:name, :image, :donator_id)
	end
end
