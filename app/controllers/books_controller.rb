class BooksController < ApplicationController

    def show
        @book = Book.find_by(id: params[:id])
    end 


end
