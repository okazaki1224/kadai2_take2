class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
  end
  
  def create
    @book=Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
    
  end
  
  private
  def book_params
    params.require(:book).permit(:Title,:Body)
  end
  
end

