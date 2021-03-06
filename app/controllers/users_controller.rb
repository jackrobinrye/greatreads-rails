class UsersController < ApplicationController

    before_action :verify_user, only: [:show]

    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to user_path(user)
        else 
            redirect_to new_user_path
        end 
    end 

    def show 
        @user = User.find_by(id: params[:id])
        @read_books = []
        @unread_books = []
        @user.book_records.each do |record|
            if record.read == true 
                @read_books << record.book 
            else 
                @unread_books << record.book
            end 
        end
        @read_books = sorted_books(@read_books.compact)
        @unread_books.compact!
    end 

    def index
        @users = User.all
    end 

    def edit
        if admin_only
            @user = User.find(params[:id])
        else 
            redirect_to user_path(params[:id])
        end 
    end 
    
    def update
        @user = User.find(params[:id])
        if @user.update(user_params) 
            redirect_to user_path(@user)
        else 
            render :edit
        end
    end 


    
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end 

end
