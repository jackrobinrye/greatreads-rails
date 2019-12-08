class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception

    helper_method :current_user 


    private 

    def logged_in?
        session[:user_id] ? true : false 
        # if session[:user_id]
        #     true
        # else 
        #     false
        # end 
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

    # def admin_only
    #   redirect to '/' unless user_is_authenticated &&

end
