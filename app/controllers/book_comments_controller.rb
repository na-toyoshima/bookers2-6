class BookCommentsController < ApplicationController
  def create
    @book_detail = Book.find(params[:book_id])
    @comment = current_user.book_comments.new(book_comment_params)
    @comment.book_id = @book_detail.id
    @comment.save

  end

  def destroy
    @book_detail = Book.find(params[:book_id])
    @comment = BookComment.find(params[:id])
    @comment.destroy

  end

  private
  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
