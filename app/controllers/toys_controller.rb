class ToysController < ApplicationController
	def index
		@toys = Toy.all
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
			if logged_in_don?
				@current_don.donors_toys.push @toy
				flash[:notice] = "Your Toy Was Created"
				redirect_to @toy
			else
				flash[:notice] = "Your Toy Was Created"
				redirect_to @toy
			end	
		else
			flash[:notice] = "there was a problem creating your toy."
			redirect_to :back
		end
	end

	def show
		@toy = Toy.find(params[:id])
		@donors_toy = DonorsToy.new
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
  		params.require(:toy).permit(:name, :image, :donator_id, :donated?, :organization_id)
	end
end
