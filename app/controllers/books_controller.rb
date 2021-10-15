class BooksController < ApplicationController
  def index
    @books= Book.all
  end

  def show
  end

  def new

    @book=Book.new

  end

  def edit
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to 'index'
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
