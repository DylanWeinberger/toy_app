class ToysController < ApplicationController
	def index
		@toys = Toy.all
		@donorstoy = DonorsToy.new
		@seek = Seek.new
	end

	def new
		@toy = Toy.new
	end

	def edit
		@toy = Toy.find(params[:id])
		@orgs = Organization.all
	end

	def update
		@toy = Toy.find(params[:id])
		@orgs = Organization.all
		if @toy.update_attributes(toy_params)
			flash[:notice] = "Your Donation has been saved!"
			redirect_to @toy
		else
			flash[:notice] = "something went wrong"
			redirect_to :back
		end
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
		@donorstoy = DonorsToy.new
		@seek = Seek.new
	end

	def destroy
		@toy = Toy.find(params[:id])
		@toy.destroy
		flash[:notice] = "Your toy has been deleted."
		redirect_to root_path
	end

	private
	def toy_params
  		params.require(:toy).permit(:name, :image, :donator_id, :donated?, :organization_id, :description, :category, :age_range)
	end
end
