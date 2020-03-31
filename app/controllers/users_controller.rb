class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
    @book = Book.new
  end

  def index
  	@users = User.all
    @book = Book.new
  end

  def edit
    @book = Book.new
  end

  def update
  end
end
