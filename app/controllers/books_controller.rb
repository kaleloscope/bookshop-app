class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def show
    @book = Book.find params[:id]
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to @book
    # render 'index'
  end

  private
    def book_params
      params.require(:book).permit(:name, :no_of_pages, :summary)
    end
end
