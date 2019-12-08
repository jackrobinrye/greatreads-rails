class AuthorsController < ApplicationController

    def show 
        @author = Author.find_by(id: params[:id])
    end 

    def index 
        @authors = Author.all
    end 

    def new 
        @author = Author.new
    end 

    def create
        @author = Author.new(author_params)
        if @author.save
            redirect_to author_path(@author)
        else 
            redirect_to new_author_path
        end 
    end 

    def edit
        @author = Author.find(params[:id])
    end 
    
    def update
        @author = Author.find(params[:id])
        if @author.update(author_params)
            redirect_to author_path(@author)
        else 
            render :edit
        end
    end 

    def destroy
        author = Author.find(params[:id])
        author.books.each do |book|
            book.destroy
        end 
        author.destroy
        redirect_to authors_path
    end 



    private

    def author_params
        params.require(:author).permit(:name, :birthdate, :bio)
    end 
    
end
