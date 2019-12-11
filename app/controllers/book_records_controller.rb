class BookRecordsController < ApplicationController

  def new
    @book_record = BookRecord.new
    registered_books = current_user.book_records.map { |book_record| book_record.book }
    @unregistered_books = Book.all - registered_books
    @unregistered_books = @unregistered_books.sort_by {|book| book.title}
  end

  def create
    @book_record = BookRecord.new(user_id: current_user.id, book_id: book_record_params[:book_id], read: book_record_params[:read])
    if @book_record.save
        redirect_to user_path(current_user)
    else 
        redirect_to new_book_record_path
    end 
  end 

  def edit
  end

  def update
  end 

  def show
  end

  def destroy
  end 

  private

    def book_record_params
        params.require(:book_record).permit(:book_id, :read)
    end 

end
