class StaticController < ApplicationController

  def home
    @books = Book.all
  end

  def browse
    @genres = Genre.all
  end

end
