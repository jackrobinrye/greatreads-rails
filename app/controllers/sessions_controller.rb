class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.find_by(email: params[:email])
      if user.authenticate(params[:password])
        session[:user_id] = user.id 
        redirect_to user_path(user)
      else 
        redirect_to sessions_new_path
      end 
    else 
      redirect_to sessions_new_path
    end 
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
