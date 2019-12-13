class StaticController < ApplicationController

  def home
    @books = sorted_books(Book.all)
  end

  def browse
    @genres = Genre.all
  end

end
