class BooksController < ApplicationController
  def index
    @books= Book.all
  end

  def show
  end

  def new

  end

  def edit
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  private

  def list_params
    params.require(:list).permit(:title, :body)
  end
end
