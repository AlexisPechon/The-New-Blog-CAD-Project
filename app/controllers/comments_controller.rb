class CommentsController < ApplicationController

http_basic_authenticate_with name: "admin", password: "manager", only: :destroy
  def create
    #Method allows the user to leave a comment on a game
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    #Method that allows the user to delete a comment on a game
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: 303
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
