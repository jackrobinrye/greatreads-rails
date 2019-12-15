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

    def user_is_current(user_id)
      if user_is_authenticated && current_user == user_id
      else 
        redirect_to '/'
      end 
    end 

    def admin_only
      if user_is_authenticated && session[:user_id].to_s == params[:id]
        true
      end 
    end

    def sorted_books(book_array)
      book_array.sort_by {|book| [book.author.name, book.title]}
    end

    def sorted_authors(author_array)
      author_array.sort_by {|author| author.name}
    end 

end
