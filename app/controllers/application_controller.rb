class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception

    helper_method :current_user 


    private 

    def logged_in?
        session[:user_id] ? true : false 
    end 
  
    def current_user
      User.find_by(id: session[:user_id])
    end 
  
    def user_is_authenticated
      !!current_user
    end 
  
    def verify_user
      redirect_to '/' unless user_is_authenticated
    end 

    def admin_only
      if user_is_authenticated && session[:user_id].to_s == params[:id]
        true
      end 
    end

end
