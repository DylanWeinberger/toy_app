class SessionsController < ApplicationController
	def new
	end

	def create_don_session
		@don = Donator.where(username: params[:username]).first     
		if @don && @don.authenticate(params[:password_digest])
			 session[:donator_id] = @don.id
			 redirect_to @don
			 flash[:notice] = "logged in!"
		else
			flash[:notice] = "please try again!"
			redirect_to login_path
		end
	end


	def destroy
		session[:donator_id] = nil
		redirect_to root_path
		flash[:notice] = "You have been logged out."
	end

end
