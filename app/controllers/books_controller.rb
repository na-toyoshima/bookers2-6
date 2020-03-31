class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    if book.save
    redirect_to book_path(book.id)
    else
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end


end
