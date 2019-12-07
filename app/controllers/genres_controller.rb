class GenresController < ApplicationController

    def show
        @genre = Genre.find_by(id: params[:id])
    end 
end
