class StaticController < ApplicationController

  def home
    @books = sorted_books
  end

  def browse
    @genres = Genre.all
  end

end
