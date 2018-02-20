class CommentsController < ApplicationController

  # POST /article/:article_id/comments
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_path(@article) }
        format.js
      else
        status 422
      end
    end
    # puts "no ajax"
    # redirect_to article_path(@article)
  end

  # DELETE /articles/:article_id/comments/:id
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:author, :body)
    end
end
