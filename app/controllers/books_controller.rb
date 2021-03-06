class BooksController < ApplicationController

    def show
        @book = Book.find_by(id: params[:id])
    end 

    def index
        @books = Book.all.sort_by { |book| book.title}
    end 

    def new 
        @book = Book.new
    end 

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to book_path(@book)
        else 
            render :new
        end 
    end 

    def edit
        @book = Book.find(params[:id])
    end 
    
    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to book_path(@book)
        else 
            render :edit
        end
    end 

    def destroy
        Book.find_by(id: params[:id]).destroy
        redirect_to books_path
    end 


    private

    def book_params
        params.require(:book).permit(:title, :author_id, :genre_id)
    end 



end
