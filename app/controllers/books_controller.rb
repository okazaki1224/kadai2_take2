class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.order(id: :DESC)
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end
  
  def create
    @book=Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end
  
  def update
    book=Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:Title,:Body)
  end
  
end

