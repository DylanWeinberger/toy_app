class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_don, :logged_in_don?
  
    def current_don
  		if session[:donator_id]
		@current_don = Donator.find(session[:donator_id])
		end
	end

	def logged_in_don?
       current_don != nil
       # if current_smuggler does not equal nil this returns true. Same for the tycoon version.
  	end
end
