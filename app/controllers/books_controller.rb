class BooksController < ApplicationController

    def show
        @book = Book.find_by(id: params[:id])
    end 

    def index
        @books = Book.all
    end 

    def new 
        @book = Book.new
    end 

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to book_path(@book)
        else 
            redirect_to new_book_path
        end 
    end 




    private

    def book_params
        params.require(:book).permit(:title, :author_id, :genre_id)
    end 



end
