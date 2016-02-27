class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_don, :logged_in_don?
  helper_method :current_org, :logged_in_org?
  
    def current_don
  		if session[:donator_id]
		    @current_don = Donator.find(session[:donator_id])
		  end
	  end

	  def logged_in_don?
       current_don != nil
    end

    def current_org
      if session[:organization_id]
        @current_org = Organization.find(session[:organization_id])
      end
    end

    def logged_in_org?
      current_org != nil
    end
end
